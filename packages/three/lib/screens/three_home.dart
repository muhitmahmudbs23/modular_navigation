import 'package:flutter/material.dart';
import 'package:three/screens/screen_routes.dart';

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
                const ThreeAPageRoute().go(context);
              },
              child: const Text('Go to A Page'),
            ),
            ElevatedButton(
              onPressed: () {
                const ThreeBPageRoute().go(context);
              },
              child: const Text('Go to B Page'),
            ),
            ElevatedButton(
              onPressed: () {
                const ThreeCPageRoute().go(context);
              },
              child: const Text('Go to C Page'),
            ),
          ],
        ),
      ),
    );
  }
}
