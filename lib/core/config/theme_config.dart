import 'package:fe_starter_project_templete/core/extensions/logger.dart';
import 'package:fe_starter_project_templete/core/models/theme/theme_model.dart';
import 'package:fe_starter_project_templete/core/models/theme/themes_model.dart';
import 'package:fe_starter_project_templete/core/services/system_service.dart';
import 'package:fe_starter_project_templete/core/utils/no_page_transition.dart';
import 'package:flutter/material.dart';

ColorScheme colorTheme({
  required Brightness brightness,
  required Color error,
  required Color surface,
  required Color primary,
  required Color secondary,
  required Color background,
  required Color onError,
  required Color onSurface,
  required Color onPrimary,
  required Color onSecondary,
  required Color onBackground,
  required Color primaryContainer,
  required Color secondaryContainer,
  required Color shadow,
  required Color scrim,
  required Color surfaceTint,
  required Color surfaceVariant,
}) =>
    ColorScheme(
      brightness: brightness,
      error: error,
      surface: surface,
      primary: primary,
      secondary: secondary,
      background: background,
      onError: onError,
      onSurface: onSurface,
      onPrimary: onPrimary,
      onSecondary: onSecondary,
      onBackground: onBackground,
      primaryContainer: primaryContainer,
      secondaryContainer: secondaryContainer,
      shadow: shadow,
      scrim: scrim,
      surfaceTint: surfaceTint,
      surfaceVariant: surfaceVariant,
    );

IconThemeData iconTheme(Color color) => IconThemeData(color: color);

AppBarTheme appBaTheme(Color color) => AppBarTheme(backgroundColor: color);

TextSelectionThemeData textSelectionTheme(Color color) => TextSelectionThemeData(
      cursorColor: color,
      selectionHandleColor: color,
      selectionColor: color.withOpacity(0.4),
    );

CardTheme cardTheme(Color color) => CardTheme(
      elevation: 5.0,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      margin: const EdgeInsets.only(left: 22.0, right: 22.0, top: 10.0, bottom: 10.0),
    );

BottomSheetThemeData bottomSheetTheme() => const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
      modalBackgroundColor: Colors.transparent,
      elevation: 0,
      modalElevation: 0,
    );

FloatingActionButtonThemeData floatingActionButtonTheme(Color color) => FloatingActionButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      backgroundColor: color,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
    );

InputDecorationTheme inputDecorationTheme(Color color) => InputDecorationTheme(
      contentPadding: const EdgeInsets.all(16),
      border: UnderlineInputBorder(borderSide: BorderSide(color: color)),
      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: color)),
      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: color)),
      errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: color)),
      focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: color)),
    );

BottomAppBarTheme bottomAppBarTheme() => const BottomAppBarTheme(
      color: Colors.transparent,
      elevation: 0,
    );

ThemeData lightThemeData() {
  final ThemeData base = ThemeData.light();
  final ColorScheme colorScheme = colorTheme(
    brightness: Brightness.light,
    error: const Color(0xFFEE8F8C),
    surface: const Color(0xFFB5B5B5),
    primary: const Color(0xFF10AEF9),
    secondary: const Color(0xFFB5B5B5),
    background: const Color(0xFFFFFFFF),
    onError: const Color(0xFFEE8F8C),
    onSurface: const Color(0xFF898E93),
    onPrimary: const Color(0xFF10AEF9),
    onSecondary: const Color(0xFFFFE9DD),
    onBackground: const Color(0xFFF8FAFB),
    primaryContainer: const Color(0xFFECF8FE),
    secondaryContainer: const Color(0xFFABE4FF),
    shadow: const Color(0xFF000000),
    scrim: const Color(0xFFABE4FF),
    surfaceTint: const Color(0xFFABE4FF),
    surfaceVariant: const Color(0xFFFFFFFF),
  );

  return base.copyWith(
    pageTransitionsTheme: NoPageTransition(),
    textSelectionTheme: textSelectionTheme(colorScheme.onSurface),
    appBarTheme: appBaTheme(colorScheme.background),
    inputDecorationTheme: inputDecorationTheme(colorScheme.onSurface),
    cardTheme: cardTheme(colorScheme.background),
    bottomSheetTheme: bottomSheetTheme(),
    iconTheme: iconTheme(colorScheme.onSurface),
    scaffoldBackgroundColor: colorScheme.background,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primaryColor: colorScheme.primary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    floatingActionButtonTheme: floatingActionButtonTheme(colorScheme.primary),
    bottomAppBarTheme: bottomAppBarTheme(),
    colorScheme: colorScheme,
  );
}

ThemeData darkThemeData() {
  final ThemeData base = ThemeData.dark();
  final ColorScheme colorScheme = colorTheme(
    brightness: Brightness.dark,
    error: const Color(0xFFEE8F8C),
    surface: const Color(0xFFB5B5B5),
    primary: const Color(0xFF10AEF9),
    secondary: const Color(0xFFB5B5B5),
    background: const Color(0xFF121212),
    onError: const Color(0xFFEE8F8C),
    onSurface: const Color(0xFFB5B5B5),
    onPrimary: const Color(0xFF10AEF9),
    onSecondary: const Color(0xFF4F5458),
    onBackground: const Color(0xFF1F1B24),
    primaryContainer: const Color(0xFFECF8FE),
    secondaryContainer: const Color(0xFFABE4FF),
    shadow: const Color(0xFFFFFFFF),
    scrim: const Color(0xFF2C2633),
    surfaceTint: const Color(0xFFFFFFFF),
    surfaceVariant: const Color(0xFFFFFFFF),
  );

  return base.copyWith(
    pageTransitionsTheme: NoPageTransition(),
    textSelectionTheme: textSelectionTheme(colorScheme.onSurface),
    appBarTheme: appBaTheme(colorScheme.background),
    inputDecorationTheme: inputDecorationTheme(colorScheme.onSurface),
    cardTheme: cardTheme(colorScheme.background),
    bottomSheetTheme: bottomSheetTheme(),
    iconTheme: iconTheme(colorScheme.onSurface),
    scaffoldBackgroundColor: colorScheme.background,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primaryColor: colorScheme.primary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    floatingActionButtonTheme: floatingActionButtonTheme(colorScheme.primary),
    bottomAppBarTheme: bottomAppBarTheme(),
    colorScheme: colorScheme,
  );
}

ThemeData customeThemeData(ThemeModel data) {
  late ThemeData base;
  late Brightness brightness;

  try {
    /// Base
    if (data.theme == "Dark") {
      base = ThemeData.dark();
      brightness = Brightness.dark;
    }

    if (data.theme == "Light") {
      base = ThemeData.light();
      brightness = Brightness.light;
    }

    ThemesModel themes = data.themes!;

    final color = themes.colorScheme!;

    /// Color
    final colorScheme = colorTheme(
      brightness: brightness,
      error: Color(colorFromString(color.error!)),
      surface: Color(colorFromString(color.surface!)),
      primary: Color(colorFromString(color.primary!)),
      secondary: Color(colorFromString(color.secondary!)),
      background: Color(colorFromString(color.background!)),
      onError: Color(colorFromString(color.onError!)),
      onSurface: Color(colorFromString(color.onSurface!)),
      onPrimary: Color(colorFromString(color.onPrimary!)),
      onSecondary: Color(colorFromString(color.onSecondary!)),
      onBackground: Color(colorFromString(color.onBackground!)),
      primaryContainer: Color(colorFromString(color.primaryContainer!)),
      secondaryContainer: Color(colorFromString(color.secondaryContainer!)),
      shadow: Color(colorFromString(color.shadow!)),
      scrim: Color(colorFromString(color.scrim!)),
      surfaceTint: Color(colorFromString(color.surfaceTint!)),
      surfaceVariant: Color(colorFromString(color.surfaceVariant!)),
    );

    final iconTheme = IconThemeData(color: Color(colorFromString(color.onSurface!)));

    final appBarTheme = AppBarTheme(backgroundColor: Color(colorFromString(color.background!)));

    final textSelectionTheme = TextSelectionThemeData(
      cursorColor: Color(colorFromString(color.onSurface!)),
      selectionHandleColor: Color(colorFromString(color.onSurface)),
      selectionColor: Color(colorFromString(color.onSurface!)).withOpacity(0.4),
    );

    final cardTheme = CardTheme(
      elevation: 5.0,
      color: Color(colorFromString(color.background!)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      margin: const EdgeInsets.only(left: 22.0, right: 22.0, top: 10.0, bottom: 10.0),
    );

    final floatingActionButtonTheme = FloatingActionButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      backgroundColor: Color(colorFromString(color.primary!)),
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
    );

    final inputDecorationTheme = InputDecorationTheme(
      contentPadding: const EdgeInsets.all(16),
      border: UnderlineInputBorder(borderSide: BorderSide(color: Color(colorFromString(color.onSurface!)))),
      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(colorFromString(color.onSurface!)))),
      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(colorFromString(color.onSurface!)))),
      errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(colorFromString(color.onSurface!)))),
      focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(colorFromString(color.onSurface!)))),
    );

    return base.copyWith(
      colorScheme: colorScheme,
      pageTransitionsTheme: NoPageTransition(),
      iconTheme: iconTheme,
      textSelectionTheme: textSelectionTheme,
      appBarTheme: appBarTheme,
      cardTheme: cardTheme,
      floatingActionButtonTheme: floatingActionButtonTheme,
      inputDecorationTheme: inputDecorationTheme,
      bottomSheetTheme: bottomSheetTheme(),
      bottomAppBarTheme: bottomAppBarTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: colorScheme.primary,
      scaffoldBackgroundColor: colorScheme.background,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  } catch (e) {
    "Change theme from server Error: $e".logger();
    if (data.theme == "Dark") return darkThemeData();
    return lightThemeData();
  }
}
