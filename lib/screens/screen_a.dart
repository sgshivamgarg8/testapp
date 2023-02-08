import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text('Screen A'),
            ElevatedButton(
              onPressed: () => context.go('/b'),
              child: const Text('Go to screen B'),
            ),
          ],
        ),
      ),
    );
  }
}
