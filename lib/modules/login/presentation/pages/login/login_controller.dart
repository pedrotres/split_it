import 'package:flutter/material.dart';
import 'package:split_it/modules/login/presentation/pages/login/login_service.dart';
import 'package:split_it/modules/login/presentation/pages/login/login_state.dart';

class LoginController {
  LoginState state = LoginStateIdle();
  VoidCallback onUpdate;
  Function(LoginState state)? onChange;

  final LoginService service;

  LoginController({required this.service, required this.onUpdate});

  Future<void> googleSignIn() async {
    try {
      state = LoginStateLoading();
      onUpdate();
      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
       onUpdate();
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
       onUpdate();
    }
  }

  void update() {
    if (onChange != null) {
      onChange!(state);
    }
  }

  void listen(Function(LoginState state) onChange) {
    this.onChange = onChange;
  }
}
