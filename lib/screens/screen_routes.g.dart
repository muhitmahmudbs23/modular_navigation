// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeScreenRoute,
    ];

RouteBase get $homeScreenRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'a',
          name: 'a',
          factory: $APageRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'c',
              name: 'c',
              factory: $CPageRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'b:value',
          name: 'b',
          factory: $BPageRouteExtension._fromState,
        ),
      ],
    );

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) => HomeScreenRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $APageRouteExtension on APageRoute {
  static APageRoute _fromState(GoRouterState state) => const APageRoute();

  String get location => GoRouteData.$location(
        '/a',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CPageRouteExtension on CPageRoute {
  static CPageRoute _fromState(GoRouterState state) => const CPageRoute();

  String get location => GoRouteData.$location(
        '/a/c',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BPageRouteExtension on BPageRoute {
  static BPageRoute _fromState(GoRouterState state) => BPageRoute(
        value: int.parse(state.pathParameters['value']!),
        query: state.uri.queryParameters['query'],
      );

  String get location => GoRouteData.$location(
        'b${Uri.encodeComponent(value.toString())}',
        queryParams: {
          if (query != null) 'query': query,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
