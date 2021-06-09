import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_page.dart';

class AppWidge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Split.IT",
      home: LoginPage(),
    );
  }
}
