import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one/one.dart';
import 'package:three/three.dart';

import 'screen_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const APageRoute().go(context);
              },
              child: const Text('Go to A Page'),
            ),
            ElevatedButton(
              onPressed: () {
                const BPageRoute(value: 1, query: "a").go(context);
              },
              child: const Text('Go to B Page'),
            ),
            ElevatedButton(
              onPressed: () {
                const CPageRoute().go(context);
              },
              child: const Text('Go to C Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(onePackageRoute);
              },
              child: const Text('Go to Package One'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(threePackageRoute);
              },
              child: const Text('Go to Package Three'),
            ),
          ],
        ),
      ),
    );
  }
}
