import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one/screens/one_home.dart';

import 'screens/one_a.dart';
import 'screens/one_b.dart';
import 'screens/one_c.dart';

late GlobalKey<NavigatorState>? parentNavigatorKey;

List<RouteBase> get oneRoutes => [
      GoRoute(
        path: OneHomeScreen.path,
        name: OneHomeScreen.path,
        builder: (context, state) => const OneHomeScreen(),
        routes: [
          GoRoute(
            path: OneAScreen.path,
            name: OneAScreen.path,
            builder: (context, state) => const OneAScreen(),
          ),
          GoRoute(
            path: OneBScreen.path,
            name: OneBScreen.path,
            builder: (context, state) => const OneBScreen(),
          ),
          GoRoute(
            path: OneBScreen.path,
            name: OneCScreen.path,
            builder: (context, state) => const OneCScreen(),
          ),
        ],
      ),
    ];
