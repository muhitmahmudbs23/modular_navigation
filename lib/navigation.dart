import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'screens/screen_routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: rootNavigatorKey,
  observers: [MyRouterObserver()],
  routes: $appRoutes,
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
