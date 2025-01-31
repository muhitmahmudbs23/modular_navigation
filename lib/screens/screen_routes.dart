import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:modular_navigation/screens/a.dart';
import 'package:modular_navigation/screens/b.dart';
import 'package:one/screens/screen_routes.dart';

import 'c.dart';
import 'home.dart';

part 'screen_routes.g.dart';

@TypedGoRoute<HomeScreenRoute>(
  path: '/',
  routes: [
    TypedGoRoute<APageRoute>(
      path: 'a',
      name: 'a',
      routes: [
        TypedGoRoute<CPageRoute>(
          path: 'c',
          name: 'c',
        ),
      ],
    ),
    TypedGoRoute<BPageRoute>(
      path: 'b:value',
      name: 'b',
    ),
    ...oneRoutes,
  ],
)
@immutable
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

@immutable
class APageRoute extends GoRouteData {
  const APageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const APage();
  }
}

@immutable
class BPageRoute extends GoRouteData {
  const BPageRoute({required this.value, this.query});

  final int value;
  final String? query;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BPage(
      value: value,
      query: query,
    );
  }
}

@immutable
class CPageRoute extends GoRouteData {
  const CPageRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CPage();
  }
}

