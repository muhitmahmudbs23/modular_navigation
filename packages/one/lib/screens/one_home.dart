import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one/screens/one_a.dart';
import 'package:two/two.dart';


import 'one_b.dart';
import 'one_c.dart';

class OneHomeScreen extends StatelessWidget {
  static const String path = 'one';
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
                context.pushNamed(OneAScreen.path);
              },
              child: const Text('Go to A Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(OneBScreen.path);
              },
              child: const Text('Go to B Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(OneCScreen.path);
              },
              child: const Text('Go to C Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(twoPackageRoute);
              },
              child: const Text('Go to Package Two'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     context.pushNamed(InitThreePage.path);
            //   },
            //   child: const Text('Go to Package Three'),
            // ),
          ],
        ),
      ),
    );
  }
}
