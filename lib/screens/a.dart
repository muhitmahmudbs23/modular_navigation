import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

@RoutePage()
class AScreen extends StatelessWidget {
  static const String path = '/a';

  const AScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is the A Page'),
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
