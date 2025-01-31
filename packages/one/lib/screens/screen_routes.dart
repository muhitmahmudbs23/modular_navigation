import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:one/screens/one_a.dart';
import 'package:one/screens/one_home.dart';

part 'screen_routes.g.dart';

const List<TypedGoRoute<OneHomeRoute>> oneRoutes = [
  TypedGoRoute<OneHomeRoute>(
    path: 'one',
    name: 'one',
    routes: [
      TypedGoRoute<OneAPageRoute>(path: 'one-a', name: 'one-a'),
    ],
  )
];

@TypedGoRoute<OneHomeRoute>(
    path: 'one',
    name: 'one',
    routes: [
      TypedGoRoute<OneAPageRoute>(path: 'one-a', name: 'one-a'),
    ],
  )

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
