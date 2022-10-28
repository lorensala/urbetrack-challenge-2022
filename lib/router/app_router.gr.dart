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
    HomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    CharacterDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterDetailsRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: CharacterDetailsScreen(
          key: args.key,
          characterResponse: args.characterResponse,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          CharacterDetailsRoute.name,
          path: '/character-details-screen',
        ),
      ];
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [CharacterDetailsScreen]
class CharacterDetailsRoute extends PageRouteInfo<CharacterDetailsRouteArgs> {
  CharacterDetailsRoute({
    Key? key,
    required CharacterResponse characterResponse,
  }) : super(
          CharacterDetailsRoute.name,
          path: '/character-details-screen',
          args: CharacterDetailsRouteArgs(
            key: key,
            characterResponse: characterResponse,
          ),
        );

  static const String name = 'CharacterDetailsRoute';
}

class CharacterDetailsRouteArgs {
  const CharacterDetailsRouteArgs({
    this.key,
    required this.characterResponse,
  });

  final Key? key;

  final CharacterResponse characterResponse;

  @override
  String toString() {
    return 'CharacterDetailsRouteArgs{key: $key, characterResponse: $characterResponse}';
  }
}
