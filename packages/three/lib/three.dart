library three;


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'navigator.dart';

class ThreePage extends StatefulWidget {
  const ThreePage({super.key});

  @override
  State<ThreePage> createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (flag, result) {
        if (router.canPop()) {
          router.pop();
        } else {
          context.pop();
        }
      },
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
