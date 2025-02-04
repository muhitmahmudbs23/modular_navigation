// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $threeInitialRoute,
    ];

RouteBase get $threeInitialRoute => GoRouteData.$route(
      path: '/',
      name: 'init',
      factory: $ThreeInitialRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'three',
          name: 'three',
          factory: $ThreeHomeRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'three-a',
              name: 'three-a',
              factory: $ThreeAPageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'three-b',
              name: 'three-b',
              factory: $ThreeBPageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'three-c',
              name: 'three-c',
              factory: $ThreeCPageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $ThreeInitialRouteExtension on ThreeInitialRoute {
  static ThreeInitialRoute _fromState(GoRouterState state) =>
      const ThreeInitialRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ThreeHomeRouteExtension on ThreeHomeRoute {
  static ThreeHomeRoute _fromState(GoRouterState state) =>
      const ThreeHomeRoute();

  String get location => GoRouteData.$location(
        '/three',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ThreeAPageRouteExtension on ThreeAPageRoute {
  static ThreeAPageRoute _fromState(GoRouterState state) =>
      const ThreeAPageRoute();

  String get location => GoRouteData.$location(
        '/three/three-a',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ThreeBPageRouteExtension on ThreeBPageRoute {
  static ThreeBPageRoute _fromState(GoRouterState state) =>
      const ThreeBPageRoute();

  String get location => GoRouteData.$location(
        '/three/three-b',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ThreeCPageRouteExtension on ThreeCPageRoute {
  static ThreeCPageRoute _fromState(GoRouterState state) =>
      const ThreeCPageRoute();

  String get location => GoRouteData.$location(
        '/three/three-c',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
