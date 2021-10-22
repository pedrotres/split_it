import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:split_it/modules/login/presentation/pages/login/login_service.dart';
import 'package:split_it/modules/login/presentation/pages/login/login_state.dart';
import 'package:split_it/modules/login/presentation/pages/login/login_controller.dart';
import 'package:split_it/modules/login/repository/models/user_model.dart';

class LoginServiceMock extends Mock implements LoginService {
  @override
  Future<UserModel> googleSignIn() async {
    // TODO: implement googleSignIn
    return UserModel(email: 'pedro@gmail.com', id: '1');
  }
}

void main() {
  late LoginController controller;
  late LoginService service;

  setUp(() {
    service = LoginServiceMock();
    controller = LoginController(service: service, onUpdate: () {});
  });

  test('Testando o google SingIn retornando sucesso', () async {
    expect(controller.state, isInstanceOf<LoginStateIdle>());
    final states = <LoginState>[];
    controller.listen((state) => states.add(state));
    when(service.googleSignIn)
        .thenAnswer((_) async => UserModel(email: "email", id: "id"));
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateSuccess>());
  });

  test('Testando o google SingIn retornando falha', () async {
    expect(controller.state, isInstanceOf<LoginStateIdle>());
    final states = <LoginState>[];
    controller.listen((state) => states.add(state));
    when(service.googleSignIn)
        .thenThrow("Deu erro");
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateFailure>());
    expect((states[1] as LoginStateFailure).message, isInstanceOf<LoginStateFailure>());
  });
}
