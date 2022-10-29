import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:starwars/starwars.dart';

import 'connection/cubit/connection_cubit.dart';
import 'helpers/helpers.dart';
import 'package:path_provider/path_provider.dart';
import 'router/app_router.dart';
import 'starwars/bloc/starwars_bloc.dart';
import 'theme/cubit/theme_cubit.dart';
import 'theme/custom_theme.dart';

import 'bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory());
  Bloc.observer = MyBlocObserver();

  final connection = storage.read(kConnectionKey);
  final isDark = storage.read(kIsDarkKey);

  final dio = Dio();
  final StarWarsApi starWarsApi = SwapiApi(dio);
  final StarWarsRepository starWarsRepository = StarWarsRepository(starWarsApi);

  final StarWarsBloc starWarsBloc = StarWarsBloc(starWarsRepository);

  final appRouter = AppRouter();

  HydratedBlocOverrides.runZoned(
      () => runApp(MultiRepositoryProvider(
            providers: [
              RepositoryProvider.value(value: starWarsRepository),
            ],
            child: MultiBlocProvider(
              providers: [
                BlocProvider.value(value: starWarsBloc),
                BlocProvider(
                    create: (context) => ThemeCubit(
                          isDark == null ? false : isDark as bool,
                        )),
                BlocProvider(
                    create: (context) => ConnectionCubit(
                        connection == null ? false : connection as bool)),
              ],
              child: MyApp(router: appRouter),
            ),
          )),
      storage: storage);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.router}) : super(key: key);

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state;

    return MaterialApp.router(
      theme: isDark ? CustomTheme.darkTheme : CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
