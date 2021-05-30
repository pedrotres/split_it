import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Container(
        decoration: BoxDecoration(
          gradient: AppTheme.gradients.background,
        ),
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          "assets/images/retangulo_direito.png",
                          width: 198,
                          height: 98,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          "assets/images/retangulo_direito.png",
                          width: 114,
                          height: 54,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Image.asset(
                "assets/images/logo.png",
                width: 128,
                height: 112,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          "assets/images/retangulo_esquerdo.png",
                          width: 198,
                          height: 98,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          "assets/images/retangulo_esquerdo.png",
                          width: 114,
                          height: 54,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
