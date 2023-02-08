import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testapp/screens/screen_a.dart';
import 'package:testapp/screens/screen_b.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoRouter _router;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    _appInit();

    _router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const ScreenA(),
        ),
        GoRoute(
          path: '/b',
          builder: (context, state) => const ScreenB(),
        ),
      ],
    );
  }

  Future<void> _appInit() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator()
        : MaterialApp.router(
            routerConfig: _router,
            title: 'Test',
            theme: ThemeData.light(),
            debugShowCheckedModeBanner: false,
          );
  }
}
