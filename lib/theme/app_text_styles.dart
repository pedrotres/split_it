import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get appBar;
  TextStyle get button;
  TextStyle get infoCardSubtitlePay;
  TextStyle get infoCardSubtitleReceive;
  TextStyle get infoCardTitle;
  TextStyle get title;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get button => GoogleFonts.inter(
        color: AppTheme.colors.button,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get title => GoogleFonts.montserrat(
        color: AppTheme.colors.title,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get appBar => GoogleFonts.montserrat(
        color: AppTheme.colors.titleAppBar,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get infoCardTitle => GoogleFonts.inter(
        color: AppTheme.colors.infoCardTitle,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get infoCardSubtitleReceive => GoogleFonts.inter(
        color: AppTheme.colors.infoCardSubTitleReceive,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

        @override
  TextStyle get infoCardSubtitlePay => GoogleFonts.inter(
        color: AppTheme.colors.infoCardSubTitlePay,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );
}
