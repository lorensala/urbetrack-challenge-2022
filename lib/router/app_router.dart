import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:starwars/starwars.dart';
import '../connection/view/connection_screen.dart';
import '../starwars/view/character_details_screen.dart';
import '../starwars/view/character_list_screen.dart';
import '../widgets/main_scaffold.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainScaffold, initial: true, name: 'MainRouter', children: [
      AutoRoute(
          page: EmptyRouterPage,
          initial: true,
          name: 'CharacterRouter',
          children: [
            AutoRoute(page: CharactersListScreen, initial: true),
            AutoRoute(page: CharacterDetailsScreen),
          ]),
      AutoRoute(page: ConnectionScreen, name: 'ConnectionRouter')
    ]),
  ],
)

/// {@template app_router}
/// The AppRouter that is responsible for handling navigation in the app.
/// {@endtemplate}
class AppRouter extends _$AppRouter {}
