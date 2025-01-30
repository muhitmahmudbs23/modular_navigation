import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one/one.dart';

import 'a.dart';
import 'b.dart';
import 'c.dart';


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
                context.pushNamed(APage.path);
              },
              child: const Text('Go to A Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(BPage.path);
              },
              child: const Text('Go to B Page'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go(CPage.route);
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
