import 'package:flutter/material.dart';
import 'package:split_it/modules/error/error_page.dart';
import 'package:split_it/modules/login/presentation/pages/login/login_page.dart';
import 'modules/splash/splash_page.dart';

class AppWidge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Split.IT",
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/error': (context) => ErrorPage(),
      },
    );
  }
}
