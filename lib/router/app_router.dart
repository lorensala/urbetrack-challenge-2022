import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:urbetrack_challenge/starwars/view/character_details_screen.dart';

import '../home_screen.dart';
import '../starwars/data/models/models.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: CharacterDetailsScreen),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
