import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'three_a.dart';
import 'three_b.dart';
import 'three_c.dart';

class ThreeHomeScreen extends StatelessWidget {
  const ThreeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Three Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.pushNamed(ThreeAScreen.path);
              },
              child: const Text('Go to A Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(ThreeBScreen.path);
              },
              child: const Text('Go to B Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(ThreeCScreen.path);
              },
              child: const Text('Go to C Page'),
            ),
          ],
        ),
      ),
    );
  }
}
