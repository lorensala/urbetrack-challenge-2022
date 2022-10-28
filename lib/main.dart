import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:urbetrack_challenge/connection/cubit/connection_cubit.dart';
import 'package:urbetrack_challenge/helpers/helpers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:urbetrack_challenge/router/app_router.dart';
import 'package:urbetrack_challenge/starwars/bloc/starwars_bloc.dart';
import 'package:urbetrack_challenge/starwars/data/api/starwars_api.dart';
import 'package:urbetrack_challenge/starwars/data/repository/starwars_repository.dart';

import 'bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory());
  Bloc.observer = MyBlocObserver();

  final connection = storage.read(kConnectionKey);

  final dio = Dio();
  final StarWarsApi starWarsApi = SwapiApiClient(dio);
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
    return MaterialApp.router(
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
