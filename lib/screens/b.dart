import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

@RoutePage()
class BPage extends StatelessWidget {
  static const String path = '/b';

  const BPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is the B Page'),
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
