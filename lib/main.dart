import 'package:flutter/material.dart';
import 'package:split_it/app_widget.dart';

import 'dependency_injector.dart';

void main() {
  runApp(AppWidge());

  WidgetsFlutterBinding.ensureInitialized();
  setupDependencies();
}
