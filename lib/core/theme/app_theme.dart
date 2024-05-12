import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/constant/size.dart';
import 'package:flutter_clean_architecture/core/theme/app_appbar.dart';
import 'package:flutter_clean_architecture/core/theme/app_checkbox.dart';
import 'package:flutter_clean_architecture/core/theme/app_chip.dart';
import 'package:flutter_clean_architecture/core/theme/app_elevatedbutton.dart';
import 'package:flutter_clean_architecture/core/theme/app_outlinedbutton.dart';
import 'package:flutter_clean_architecture/core/theme/app_pallete.dart';
import 'package:flutter_clean_architecture/core/theme/app_text.dart';

import 'app_bottomsheet.dart';

class MhyAppTheme {
  MhyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    // colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff2196F3)),
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primaryColor: MhyPallete.primary,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: MhyAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: MhyBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: MhyCheckBoxTheme.lightCheckboxTheme,
    chipTheme: MhyChipTheme.lightChipTheme,
    elevatedButtonTheme: MhyElevatedButtonTheme.lightElevatedButtonTheme,
    // inputDecorationTheme: MhyInoutDecorationTheme.lightInputDecorationTheme,
    outlinedButtonTheme: MhyOutlinedButtonTheme.lightOutlinedButton,
    textTheme: MhyTextTheme.lightTextTheme,
    iconTheme: const IconThemeData(color: MhyPallete.black),
    cardTheme: const CardTheme(
        color: MhyPallete.white,
        elevation: MhySizes.xs,
        clipBehavior: Clip.antiAlias),
  );

  static ThemeData darkTheme = ThemeData(
    // colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff2196F3)),
    useMaterial3: true,
    fontFamily: 'Inter',
    brightness: Brightness.dark,
    primaryColor: MhyPallete.primary,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: MhyAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: MhyBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: MhyCheckBoxTheme.darkCheckboxTheme,
    chipTheme: MhyChipTheme.darkChipTheme,
    elevatedButtonTheme: MhyElevatedButtonTheme.darkElevatedButtonTheme,
    // inputDecorationTheme: MhyInoutDecorationTheme.darkInputDecorationTheme,
    outlinedButtonTheme: MhyOutlinedButtonTheme.darkOutlinedButton,
    textTheme: MhyTextTheme.darkTextTheme,
    cardTheme: const CardTheme(color: MhyPallete.white),
    iconTheme: const IconThemeData(color: MhyPallete.white),
  );
}
