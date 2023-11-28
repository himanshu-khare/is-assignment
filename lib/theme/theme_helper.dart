import 'package:flutter/material.dart';
import 'package:is_assignment/core/utils/size_utils.dart';

class ThemeHelper {
  PrimaryColors _getThemeColors() {
    return PrimaryColors();
  }

  ThemeData _getThemeData() {
    return ThemeData(
      visualDensity: VisualDensity.standard,
      textTheme: TextThemes.textTheme(),
      appBarTheme: AppBarTheme(
        backgroundColor: appTheme.white,
      ),
      useMaterial3: true,
      fontFamily: 'Nunito',
    );
  }

  PrimaryColors themeColor() => _getThemeColors();
  ThemeData themeData() => _getThemeData();
}

class TextThemes {
  static TextTheme textTheme() => TextTheme(
        bodyMedium: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          fontSize: 24.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          fontSize: 10.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        ),
        labelSmall: TextStyle(
          fontSize: 8.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          fontSize: 20.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w500,
        ),
      );
}

class PrimaryColors {
  Color get white => const Color(0XFFffffff);
  Color get green => const Color(0xff9dc1b3);
  Color get icbackground => const Color(0xfffeddba);
  Color get blue => const Color(0xff7297E7);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
