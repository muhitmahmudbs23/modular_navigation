import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one/screens/screen_routes.dart';
import 'package:two/two.dart';


class OneHomeScreen extends StatelessWidget {
  const OneHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('One Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const OneAPageRoute().go(context);
              },
              child: const Text('Go to A Page'),
            ),
            ElevatedButton(
              onPressed: () {
                const OneBPageRoute().go(context);
              },
              child: const Text('Go to B Page'),
            ),
            ElevatedButton(
              onPressed: () {
                const OneCPageRoute().go(context);
              },
              child: const Text('Go to C Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(twoPackageRoute);
              },
              child: const Text('Go to Package Two'),
            ),
          ],
        ),
      ),
    );
  }
}
