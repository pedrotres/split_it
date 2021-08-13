import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundSecondary;
  Color get backgroundPrimary;
  Color get title;
  Color get button;
  Color get border;
}

class AppColorsDefault implements AppColors {

  @override
  Color get backgroundPrimary => Color(0XFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get title => Color(0XFF40B28C);

  @override 
  Color get button => Color(0XFF666666);

  @override
  Color get border => Color(0XFFDCE0E5);


}
