import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'two_a.dart';
import 'two_b.dart';
import 'two_c.dart';
import 'two_home.dart';

part 'screen_routes.g.dart';

const twoRoutes = [
  TypedGoRoute<TwoHomeRoute>(
    path: 'two',
    name: 'two',
    routes: [
      TypedGoRoute<TwoAPageRoute>(path: 'two-a', name: 'two-a'),
      TypedGoRoute<TwoBPageRoute>(path: 'two-b', name: 'two-b'),
      TypedGoRoute<TwoCPageRoute>(path: 'two-c', name: 'two-c'),
    ],
  ),
];

@TypedGoRoute<TwoInitialRoute>(
  path: '/one',
  name: 'one',
  routes: [...twoRoutes],
)

@immutable
class TwoInitialRoute extends GoRouteData {
  const TwoInitialRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TwoHomeScreen();
  }
}

@immutable
class TwoHomeRoute extends GoRouteData {
  const TwoHomeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TwoHomeScreen();
  }
}

@immutable
class TwoAPageRoute extends GoRouteData {
  const TwoAPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TwoAScreen();
  }
}

@immutable
class TwoBPageRoute extends GoRouteData {
  const TwoBPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TwoBScreen();
  }
}

@immutable
class TwoCPageRoute extends GoRouteData {
  const TwoCPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TwoCScreen();
  }
}
