import 'package:go_router/go_router.dart';

import 'screens/two_a.dart';
import 'screens/two_b.dart';
import 'screens/two_c.dart';
import 'screens/two_home.dart';

List<RouteBase> get twoRoutes => [
      GoRoute(
          path: TwoHomeScreen.path,
          name: TwoHomeScreen.path,
          builder: (context, state) => const TwoHomeScreen(),
          routes: [
            GoRoute(
              path: TwoAScreen.path,
              name: TwoAScreen.path,
              builder: (context, state) => const TwoAScreen(),
            ),
            GoRoute(
              path: TwoBScreen.path,
              name: TwoBScreen.path,
              builder: (context, state) => const TwoBScreen(),
            ),
            GoRoute(
              path: TwoCScreen.path,
              name: TwoCScreen.path,
              builder: (context, state) => const TwoCScreen(),
            ),
          ])
    ];
