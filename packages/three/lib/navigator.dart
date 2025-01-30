import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/three_home.dart';

import 'screens/three_a.dart';
import 'screens/three_b.dart';
import 'screens/three_c.dart';

const String _initialLocation = '/three';

final GoRouter router = GoRouter(
  initialLocation: _initialLocation,
  observers: [MyRouterObserver()],
  routes: [
    GoRoute(
        path: _initialLocation,
        builder: (context, state) => const ThreeHomeScreen(),
        routes: [
          GoRoute(
            path: '$_initialLocation${ThreeAScreen.path}',
            name: ThreeAScreen.path,
            builder: (context, state) => const ThreeAScreen(),
          ),
          GoRoute(
            path: '$_initialLocation${ThreeBScreen.path}',
            name: ThreeBScreen.path,
            builder: (context, state) => const ThreeBScreen(),
          ),
          GoRoute(
            path: '$_initialLocation${ThreeCScreen.path}',
            name: ThreeCScreen.path,
            builder: (context, state) => const ThreeCScreen(),
          ),
        ]),
  ],
);

class MyRouterObserver extends NavigatorObserver {
  final List<Route> routes = [];

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    routes.add(route);
    log(route.settings.name.toString(), name: "Three: route pushed");
    log(routes.toString(), name: "Three: routes");
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    routes.remove(route);
    log(route.settings.name.toString(), name: "Three: route popped");
    log(routes.toString(), name: "Three: routes");
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    routes.remove(oldRoute);
    if (newRoute != null) routes.add(newRoute);
    log(newRoute?.settings.name.toString() ?? 'No route to be replaced',
        name: "route replaced");
    log(routes.toString(), name: "routes");
  }
}
