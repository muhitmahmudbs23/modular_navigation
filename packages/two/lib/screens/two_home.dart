import 'package:flutter/material.dart';
import 'package:two/screens/screen_routes.dart';

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
                const TwoAPageRoute().go(context);
              },
              child: const Text('Go to A Page'),
            ),
            ElevatedButton(
              onPressed: () {
                const TwoBPageRoute().go(context);
              },
              child: const Text('Go to B Page'),
            ),
            ElevatedButton(
              onPressed: () {
                const TwoCPageRoute().go(context);
              },
              child: const Text('Go to C Page'),
            ),
          ],
        ),
      ),
    );
  }
}
