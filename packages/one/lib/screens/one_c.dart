import 'package:flutter/material.dart';

class OneCScreen extends StatelessWidget {
  static const String path = '/oneC';

  const OneCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('One C Screen'),
        ),
        body: Center(
          child: Column(
            children: [
              const Text('This will pop from the root navigator'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
                child: const Text('Back to Home'),
              ),
            ],
          ),
        ));
  }
}
