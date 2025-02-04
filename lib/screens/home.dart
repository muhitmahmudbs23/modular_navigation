import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modular_navigation/screens/c.dart';
import 'package:one/one.dart';

import 'a.dart';
import 'b.dart';

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
                context.goNamed(APage.path);
              },
              child: const Text('Go to A Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(BPage.path);
              },
              child: const Text('Go to B Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(CPage.path);
              },
              child: const Text('Go to C Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(onePackageRoute);
              },
              child: const Text('Go to Package One'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     context.pushNamed(InitOnePage.path);
            //   },
            //   child: const Text('Go to Package One B Page'),
            // ),
          ],
        ),
      ),
    );
  }
}
