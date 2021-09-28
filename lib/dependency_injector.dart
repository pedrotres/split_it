import 'package:get_it/get_it.dart';

import 'modules/login/presentation/dependencies.dart';

GetIt serviceLocator = GetIt.instance;

void setupDependencies() {
  setupLogin();
}
