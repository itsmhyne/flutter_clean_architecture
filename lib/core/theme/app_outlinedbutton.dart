import 'package:flutter/material.dart';

class MhyOutlinedButtonTheme {
  MhyOutlinedButtonTheme._();

  static final lightOutlinedButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Color(0xff2196F3)),
      textStyle: const TextStyle(
          fontSize: 16,
          fontFamily: 'Inter',
          color: Colors.black,
          fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );

  static final darkOutlinedButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: Color(0xff2196F3)),
      textStyle: const TextStyle(
          fontSize: 16,
          fontFamily: 'Inter',
          color: Colors.white,
          fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
}
