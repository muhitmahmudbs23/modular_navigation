import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one/navigator.dart';
import 'package:two/two.dart';

import 'screens/a.dart';
import 'screens/b.dart';
import 'screens/c.dart';
import 'screens/home.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> oneNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> twoNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> threeNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: rootNavigatorKey,
  observers: [MyRouterObserver()],
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: APage.path,
          name: APage.path,
          builder: (context, state) => const APage(),
          routes: [
            GoRoute(
              path: BPage.path,
              name: BPage.path,
              builder: (context, state) => const BPage(),
              routes: [
                GoRoute(
                  path: CPage.path,
                  name: CPage.path,
                  builder: (context, state) => const CPage(),
                ),
              ],
            ),
          ],
        ),
        // GoRoute(
        //   path: InitOnePage.path,
        //   name: InitOnePage.path,
        //   builder: (context, state) => const InitOnePage(),
        //   routes: [...oneRoutes],
        // ),
        ...oneRoutes,
        ...twoRoutes,
        // GoRoute(
        //   path: InitTwoPage.path,
        //   name: InitTwoPage.path,
        //   builder: (context, state) => const InitTwoPage(),
        // ),
      ],
    ),
  ],
);

class MyRouterObserver extends NavigatorObserver {
  final List<Route> routes = [];

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    routes.add(route);
    log(route.settings.name.toString(), name: "Main: route pushed");
    log(routes.toString(), name: "Main: routes");
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    routes.remove(route);
    log(route.settings.name.toString(), name: "Main: route popped");
    log(routes.toString(), name: "Main: routes");
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
