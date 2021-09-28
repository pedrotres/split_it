import 'package:split_it/dependency_injector.dart';
import 'package:split_it/modules/login/presentation/pages/login/login_controller.dart';

void setupLogin() {
  serviceLocator.registerFactory<LoginController>(
    () => LoginController(),
  );
}
