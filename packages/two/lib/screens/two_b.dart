import 'package:flutter/material.dart';

class TwoBScreen extends StatelessWidget {
  static const String path = '/twoB';

  const TwoBScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two B Screen'),
      ),
      body: const Center(
        child: Text('This is Two B Screen'),
      ),
    );
  }
}
