// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $twoInitialRoute,
    ];

RouteBase get $twoInitialRoute => GoRouteData.$route(
      path: '/one',
      name: 'one',
      factory: $TwoInitialRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'two',
          name: 'two',
          factory: $TwoHomeRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'two-a',
              name: 'two-a',
              factory: $TwoAPageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'two-b',
              name: 'two-b',
              factory: $TwoBPageRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'two-c',
              name: 'two-c',
              factory: $TwoCPageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $TwoInitialRouteExtension on TwoInitialRoute {
  static TwoInitialRoute _fromState(GoRouterState state) =>
      const TwoInitialRoute();

  String get location => GoRouteData.$location(
        '/one',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TwoHomeRouteExtension on TwoHomeRoute {
  static TwoHomeRoute _fromState(GoRouterState state) => const TwoHomeRoute();

  String get location => GoRouteData.$location(
        '/one/two',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TwoAPageRouteExtension on TwoAPageRoute {
  static TwoAPageRoute _fromState(GoRouterState state) => const TwoAPageRoute();

  String get location => GoRouteData.$location(
        '/one/two/two-a',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TwoBPageRouteExtension on TwoBPageRoute {
  static TwoBPageRoute _fromState(GoRouterState state) => const TwoBPageRoute();

  String get location => GoRouteData.$location(
        '/one/two/two-b',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TwoCPageRouteExtension on TwoCPageRoute {
  static TwoCPageRoute _fromState(GoRouterState state) => const TwoCPageRoute();

  String get location => GoRouteData.$location(
        '/one/two/two-c',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
