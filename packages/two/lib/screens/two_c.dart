import 'package:flutter/material.dart';

class TwoCScreen extends StatelessWidget {
  static const String path = '/twoC';

  const TwoCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Two C Screen'),
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
