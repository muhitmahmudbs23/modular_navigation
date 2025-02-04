import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:two/two.dart';

import 'one_a.dart';
import 'one_b.dart';
import 'one_c.dart';
import 'one_home.dart';

part 'screen_routes.g.dart';

const oneRoutes = [
  TypedGoRoute<OneHomeRoute>(
    path: 'one',
    name: 'one',
    routes: [
      TypedGoRoute<OneAPageRoute>(path: 'one-a', name: 'one-a'),
      TypedGoRoute<OneBPageRoute>(path: 'one-b', name: 'one-b'),
      TypedGoRoute<OneCPageRoute>(path: 'one-c', name: 'one-c'),
      // ...twoRoutes,
    ],
  ),
];





@TypedGoRoute<OneInitialRoute>(
  path: '/',
  name: 'init',
  routes: [...oneRoutes],
)
@immutable
class OneInitialRoute extends GoRouteData {
  const OneInitialRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OneHomeScreen();
  }
}

@immutable
class OneHomeRoute extends GoRouteData {
  const OneHomeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OneHomeScreen();
  }
}

@immutable
class OneAPageRoute extends GoRouteData {
  const OneAPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OneAScreen();
  }
}

@immutable
class OneBPageRoute extends GoRouteData {
  const OneBPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OneBScreen();
  }
}

@immutable
class OneCPageRoute extends GoRouteData {
  const OneCPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OneCScreen();
  }
}
