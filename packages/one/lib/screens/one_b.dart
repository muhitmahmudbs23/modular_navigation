import 'package:flutter/material.dart';

class OneBScreen extends StatelessWidget {

  const OneBScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('One B Screen'),
      ),
      body: const Center(
        child: Text('This is One B Screen'),
      ),
    );
  }
}
