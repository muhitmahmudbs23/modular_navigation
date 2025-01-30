import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TwoAScreen extends StatelessWidget {
  static const String path = '/twoA';

  const TwoAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two A Screen'),
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
