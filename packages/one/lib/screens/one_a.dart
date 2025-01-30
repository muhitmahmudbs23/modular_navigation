import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OneAScreen extends StatelessWidget {
  static const String path = '/oneA';

  const OneAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('One A Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('This will go back to the previous screen'),
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
