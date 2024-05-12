import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/theme/app_pallete.dart';

class MhyTextTheme {
  MhyTextTheme._();

  // -- light theme
  static TextTheme lightTextTheme = TextTheme(
      displayLarge:
          const TextStyle().copyWith(fontSize: 57, color: MhyPallete.textLight),
      displayMedium:
          const TextStyle().copyWith(fontSize: 45, color: MhyPallete.textLight),
      displaySmall:
          const TextStyle().copyWith(fontSize: 36, color: MhyPallete.textLight),
      headlineLarge: const TextStyle()
          .copyWith(fontSize: 32.0, color: MhyPallete.textLight),
      headlineMedium: const TextStyle()
          .copyWith(fontSize: 28.0, color: MhyPallete.textLight),
      headlineSmall: const TextStyle()
          .copyWith(fontSize: 24.0, color: MhyPallete.textLight),
      titleLarge: const TextStyle().copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 22.0,
          color: MhyPallete.textLight),
      titleMedium: const TextStyle().copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
          letterSpacing: 0.15,
          color: MhyPallete.textLight),
      titleSmall: const TextStyle().copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
          letterSpacing: 0.1,
          color: MhyPallete.textLight),
      bodyLarge: const TextStyle().copyWith(
          fontSize: 16.0, letterSpacing: 0.15, color: MhyPallete.textLight),
      bodyMedium: const TextStyle().copyWith(
          fontSize: 14.0, letterSpacing: 0.25, color: MhyPallete.textLight),
      bodySmall: const TextStyle().copyWith(
          fontSize: 12.0, letterSpacing: 0.4, color: MhyPallete.textLight),
      labelLarge: const TextStyle().copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
          letterSpacing: 0.1,
          color: MhyPallete.textLight),
      labelMedium: const TextStyle().copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 12.0,
          letterSpacing: 0.5,
          color: MhyPallete.textLight),
      labelSmall: const TextStyle().copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 11.0,
          letterSpacing: 0.5,
          color: MhyPallete.textLight));

  // -- dark theme
  static TextTheme darkTextTheme = TextTheme(
    displayLarge:
        const TextStyle().copyWith(fontSize: 57, color: MhyPallete.textDark),
    displayMedium:
        const TextStyle().copyWith(fontSize: 45, color: MhyPallete.textDark),
    displaySmall:
        const TextStyle().copyWith(fontSize: 36, color: MhyPallete.textDark),
    headlineLarge:
        const TextStyle().copyWith(fontSize: 32.0, color: MhyPallete.textDark),
    headlineMedium:
        const TextStyle().copyWith(fontSize: 28.0, color: MhyPallete.textDark),
    headlineSmall:
        const TextStyle().copyWith(fontSize: 24.0, color: MhyPallete.textDark),
    titleLarge: const TextStyle().copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
        color: MhyPallete.textDark),
    titleMedium: const TextStyle().copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        letterSpacing: 0.15,
        color: MhyPallete.textDark),
    titleSmall: const TextStyle().copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        letterSpacing: 0.1,
        color: MhyPallete.textDark),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 16.0, letterSpacing: 0.15, color: MhyPallete.textDark),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0, letterSpacing: 0.25, color: MhyPallete.textDark),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12.0, color: MhyPallete.textDark, letterSpacing: 0.4),
    labelLarge: const TextStyle().copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        letterSpacing: 0.1,
        color: MhyPallete.textDark),
    labelMedium: const TextStyle().copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        letterSpacing: 0.5,
        color: MhyPallete.textDark),
    labelSmall: const TextStyle().copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
        letterSpacing: 0.5,
        color: MhyPallete.textDark),
  );
}
