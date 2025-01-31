import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BPage extends StatelessWidget {
  const BPage({super.key, required this.value, this.query});

  final int value;
  final String? query;
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
            Text('$value $query'),
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
