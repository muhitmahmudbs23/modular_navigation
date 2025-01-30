import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'two_a.dart';
import 'two_b.dart';
import 'two_c.dart';

class TwoHomeScreen extends StatelessWidget {
  static const String path = 'two';
  const TwoHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.pushNamed(TwoAScreen.path);
              },
              child: const Text('Go to A Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(TwoBScreen.path);
              },
              child: const Text('Go to B Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(TwoCScreen.path);
              },
              child: const Text('Go to C Page'),
            ),
          ],
        ),
      ),
    );
  }
}
