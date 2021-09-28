import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/repository/models/user_model.dart';

class LoginController {
  UserModel? user;
  LoginState state = LoginStateIdle();
  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final account = await _googleSignIn.signIn();
      user = UserModel.google(account!);
      print(user);
    } catch (e) {
      print(e);
    }
  }
}
