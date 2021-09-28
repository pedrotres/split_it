import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:split_it/dependency_injector.dart';
import 'package:split_it/modules/login/presentation/pages/login/login_controller.dart';
import 'package:split_it/modules/login/presentation/widgets/social_button.dart';
import 'package:split_it/theme/app_text_styles.dart';
import 'package:split_it/theme/app_theme.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginView(
      controller: serviceLocator.get<LoginController>(),
      
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({Key? key, required this.controller,}) : super(key: key);

  final LoginController controller;

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  width: 236,
                  child: Text("Divida suas contas com seus amigos",
                      style: AppTheme.textStyles.title),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: ListTile(
                  leading: Image.asset("assets/images/emoji.png"),
                  title: Text("Faça seu login com uma das contas abaixo",
                      style: AppTheme.textStyles.button),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SocialButtonWidget(
                  imagePath: "assets/images/google.png",
                  label: "Entrar com Google",
                  onTap: ()  {
                    widget.controller.googleSignIn();
                  },
                ),
              ),
              SizedBox(
                height: 12,
              ),
              //TODO: EFETUAR CONFIGURAÇÃO APPLE
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 32),
              //   child: SocialButtonWidget(
              //     imagePath: "assets/images/apple.png",
              //     label: "Entrar com Apple",
              //     onTap: () async {
              //       final credential =
              //           await SignInWithApple.getAppleIDCredential(
              //         scopes: [
              //           AppleIDAuthorizationScopes.email,
              //           AppleIDAuthorizationScopes.fullName,
              //         ],
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
