// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $oneHomeRoute,
    ];

RouteBase get $oneHomeRoute => GoRouteData.$route(
      path: 'one',
      name: 'one',
      factory: $OneHomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'one-a',
          name: 'one-a',
          factory: $OneAPageRouteExtension._fromState,
        ),
      ],
    );

extension $OneHomeRouteExtension on OneHomeRoute {
  static OneHomeRoute _fromState(GoRouterState state) => const OneHomeRoute();

  String get location => GoRouteData.$location(
        'one',
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
        'one/one-a',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
