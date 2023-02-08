import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text('Screen B'),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go to screen A'),
            ),
          ],
        ),
      ),
    );
  }
}
