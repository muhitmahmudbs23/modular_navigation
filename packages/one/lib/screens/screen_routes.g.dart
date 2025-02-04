// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $oneInitialRoute,
    ];

RouteBase get $oneInitialRoute => GoRouteData.$route(
      path: '/',
      name: 'init',
      factory: $OneInitialRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'one',
          name: 'one',
          factory: $OneHomeRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'one-a',
              name: 'one-a',
              factory: $OneAPageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'one-b',
              name: 'one-b',
              factory: $OneBPageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'one-c',
              name: 'one-c',
              factory: $OneCPageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $OneInitialRouteExtension on OneInitialRoute {
  static OneInitialRoute _fromState(GoRouterState state) =>
      const OneInitialRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OneHomeRouteExtension on OneHomeRoute {
  static OneHomeRoute _fromState(GoRouterState state) => const OneHomeRoute();

  String get location => GoRouteData.$location(
        '/one',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OneAPageRouteExtension on OneAPageRoute {
  static OneAPageRoute _fromState(GoRouterState state) => const OneAPageRoute();

  String get location => GoRouteData.$location(
        '/one/one-a',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OneBPageRouteExtension on OneBPageRoute {
  static OneBPageRoute _fromState(GoRouterState state) => const OneBPageRoute();

  String get location => GoRouteData.$location(
        '/one/one-b',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OneCPageRouteExtension on OneCPageRoute {
  static OneCPageRoute _fromState(GoRouterState state) => const OneCPageRoute();

  String get location => GoRouteData.$location(
        '/one/one-c',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
