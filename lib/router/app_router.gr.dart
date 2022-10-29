// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const MainScaffold(),
      );
    },
    CharacterRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    ConnectionRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ConnectionScreen(),
      );
    },
    CharactersListRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const CharactersListScreen(),
      );
    },
    CharacterDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterDetailsRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: CharacterDetailsScreen(
          key: args.key,
          character: args.character,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          MainRouter.name,
          path: '/',
          children: [
            RouteConfig(
              CharacterRouter.name,
              path: '',
              parent: MainRouter.name,
              children: [
                RouteConfig(
                  CharactersListRoute.name,
                  path: '',
                  parent: CharacterRouter.name,
                ),
                RouteConfig(
                  CharacterDetailsRoute.name,
                  path: 'character-details-screen',
                  parent: CharacterRouter.name,
                ),
              ],
            ),
            RouteConfig(
              ConnectionRouter.name,
              path: 'connection-screen',
              parent: MainRouter.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [MainScaffold]
class MainRouter extends PageRouteInfo<void> {
  const MainRouter({List<PageRouteInfo>? children})
      : super(
          MainRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRouter';
}

/// generated route for
/// [EmptyRouterPage]
class CharacterRouter extends PageRouteInfo<void> {
  const CharacterRouter({List<PageRouteInfo>? children})
      : super(
          CharacterRouter.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'CharacterRouter';
}

/// generated route for
/// [ConnectionScreen]
class ConnectionRouter extends PageRouteInfo<void> {
  const ConnectionRouter()
      : super(
          ConnectionRouter.name,
          path: 'connection-screen',
        );

  static const String name = 'ConnectionRouter';
}

/// generated route for
/// [CharactersListScreen]
class CharactersListRoute extends PageRouteInfo<void> {
  const CharactersListRoute()
      : super(
          CharactersListRoute.name,
          path: '',
        );

  static const String name = 'CharactersListRoute';
}

/// generated route for
/// [CharacterDetailsScreen]
class CharacterDetailsRoute extends PageRouteInfo<CharacterDetailsRouteArgs> {
  CharacterDetailsRoute({
    Key? key,
    required Character character,
  }) : super(
          CharacterDetailsRoute.name,
          path: 'character-details-screen',
          args: CharacterDetailsRouteArgs(
            key: key,
            character: character,
          ),
        );

  static const String name = 'CharacterDetailsRoute';
}

class CharacterDetailsRouteArgs {
  const CharacterDetailsRouteArgs({
    this.key,
    required this.character,
  });

  final Key? key;

  final Character character;

  @override
  String toString() {
    return 'CharacterDetailsRouteArgs{key: $key, character: $character}';
  }
}
