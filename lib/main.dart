import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:starwars/starwars.dart';
import 'package:urbetrack_challenge/helpers/asset_provider.dart';

import 'connection/cubit/connection_cubit.dart';
import 'helpers/helpers.dart';
import 'package:path_provider/path_provider.dart';
import 'router/app_router.dart';
import 'starwars/bloc/starwars_bloc.dart';
import 'theme/cubit/theme_cubit.dart';
import 'theme/custom_theme.dart';

import 'bloc_observer.dart';

/// {@template app}
/// Urbetrack Challenge App.
///
/// Author: [Lorenzo Sala]
/// {@endtemplate}
void main() async {
  // Initialize HydratedBloc
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory());

  // Initialize bloc observer if not in release mode
  if (kDebugMode) {
    Bloc.observer = MyBlocObserver();
  }

  // Precache svgs
  await _precacheSvgs();

  // Load storage values
  final connection = storage.read(kConnectionKey);
  final isDark = storage.read(kIsDarkKey);

  // Initialize Dio
  final dio = Dio()
    ..options.connectTimeout = 10000
    ..options.receiveTimeout = 10000;

  // Initialize StarWarsRepository and StarWarsBloc
  final StarWarsApi starWarsApi = SwapiApi(dio);
  final StarWarsRepository starWarsRepository = StarWarsRepository(starWarsApi);
  final StarWarsBloc starWarsBloc = StarWarsBloc(starWarsRepository);

  // Initialize app router
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

Future<void> _precacheSvgs() async {
  await Future.wait([
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoderBuilder, AssetProvider.characters),
        null),
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoderBuilder, AssetProvider.connection),
        null),
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoderBuilder, AssetProvider.sun),
        null),
    precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoderBuilder, AssetProvider.moon),
        null),
  ]);
}
