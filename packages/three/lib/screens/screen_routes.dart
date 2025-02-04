import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'three_a.dart';
import 'three_b.dart';
import 'three_c.dart';
import 'three_home.dart';

part 'screen_routes.g.dart';

const threeRoutes = [
  TypedGoRoute<ThreeHomeRoute>(
    path: 'three',
    name: 'three',
    routes: [
      TypedGoRoute<ThreeAPageRoute>(path: 'three-a', name: 'three-a'),
      TypedGoRoute<ThreeBPageRoute>(path: 'three-b', name: 'three-b'),
      TypedGoRoute<ThreeCPageRoute>(path: 'three-c', name: 'three-c'),
    ],
  ),
];

@TypedGoRoute<ThreeInitialRoute>(
  path: '/',
  name: 'init',
  routes: [...threeRoutes],
)
@immutable
class ThreeInitialRoute extends GoRouteData {
  const ThreeInitialRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ThreeHomeScreen();
  }
}

@immutable
class ThreeHomeRoute extends GoRouteData {
  const ThreeHomeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ThreeHomeScreen();
  }
}

@immutable
class ThreeAPageRoute extends GoRouteData {
  const ThreeAPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ThreeAScreen();
  }
}

@immutable
class ThreeBPageRoute extends GoRouteData {
  const ThreeBPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ThreeBScreen();
  }
}

@immutable
class ThreeCPageRoute extends GoRouteData {
  const ThreeCPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ThreeCScreen();
  }
}
