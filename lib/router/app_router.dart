import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:urbetrack_challenge/connection/view/connection_screen.dart';
import 'package:urbetrack_challenge/starwars/view/character_details_screen.dart';
import 'package:urbetrack_challenge/starwars/view/character_list_screen.dart';
import 'package:urbetrack_challenge/widgets/main_scaffold.dart';

import '../starwars/data/models/models.dart';

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
// extend the generated private router
class AppRouter extends _$AppRouter {}
