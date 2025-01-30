import 'package:flutter/material.dart';

class ThreeBScreen extends StatelessWidget {
  static const String path = '/b';

  const ThreeBScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Three B Screen'),
      ),
      body: const Center(
        child: Text('This is Three B Screen'),
      ),
    );
  }
}
