import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CPage extends StatelessWidget {
  static const String path = 'c';

  const CPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is the C Page'),
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
