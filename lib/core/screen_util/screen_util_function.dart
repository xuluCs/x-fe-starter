import 'package:fe_starter_project_templete/core/config/injection.dart';
import 'package:fe_starter_project_templete/core/screen_util/screen_util_extension.dart';
import 'package:fe_starter_project_templete/core/stores/screen_util/screen_util_store.dart';
import 'package:flutter/material.dart';

mixin ScreenUtilFunction {
  T screenBreakPoint<T>({required T desktop, T? tablet, T? mobile}) {
    final prefix = sl<ScreenUtilStore>();

    if (prefix.isDesktop) return desktop;
    if (prefix.isTablet) return tablet ?? desktop;
    return mobile ?? tablet ?? desktop;
  }

  ColorScheme colorDisplay(BuildContext context) =>
      Theme.of(context).colorScheme;
  double mobileKeyboardSize(BuildContext context) =>
      MediaQuery.of(context).viewInsets.bottom;
  double mobileTopPadding(BuildContext context) =>
      MediaQuery.of(context).padding.top;
  double textScaleFactor(BuildContext context) =>
      MediaQuery.of(context).textScaleFactor;

  TextStyle textStyleDisplay(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final sizeLarge = textTheme.displayLarge?.fontSize ?? 0;
    final sizeMedium = textTheme.displayMedium?.fontSize ?? 0;
    final sizeSmall = textTheme.displaySmall?.fontSize ?? 0;
    return screenBreakPoint<TextStyle>(
      desktop: textTheme.displayLarge!.copyWith(
        fontSize: sizeLarge.spMin < sizeMedium ? sizeMedium : sizeLarge.spMin,
        letterSpacing: 0,
      ),
      tablet: textTheme.displayMedium?.copyWith(
        fontSize: sizeMedium.spMin < sizeSmall ? sizeSmall : sizeMedium.spMin,
        letterSpacing: 0,
      ),
      mobile: textTheme.displaySmall?.copyWith(
        fontSize: sizeSmall.spMin,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle textStyleHeadline(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final sizeLarge = textTheme.headlineLarge?.fontSize ?? 0;
    final sizeMedium = textTheme.headlineMedium?.fontSize ?? 0;
    final sizeSmall = textTheme.headlineSmall?.fontSize ?? 0;
    return screenBreakPoint<TextStyle>(
      desktop: textTheme.headlineLarge!.copyWith(
        fontSize: sizeLarge.spMin < sizeMedium ? sizeMedium : sizeLarge.spMin,
        letterSpacing: 0,
      ),
      tablet: textTheme.headlineMedium?.copyWith(
        fontSize: sizeMedium.spMin < sizeSmall ? sizeSmall : sizeMedium.spMin,
        letterSpacing: 0,
      ),
      mobile: textTheme.headlineSmall?.copyWith(
        fontSize: sizeSmall.spMin,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle textStyleTitle(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final sizeLarge = textTheme.titleLarge?.fontSize ?? 0;
    final sizeMedium = textTheme.titleMedium?.fontSize ?? 0;
    final sizeSmall = textTheme.titleSmall?.fontSize ?? 0;

    return screenBreakPoint<TextStyle>(
      desktop: textTheme.titleLarge!.copyWith(
        fontSize: sizeLarge.spMin < sizeMedium ? sizeMedium : sizeLarge.spMin,
        letterSpacing: 0,
      ),
      tablet: textTheme.titleMedium?.copyWith(
        fontSize: sizeMedium.spMin < sizeSmall ? sizeSmall : sizeMedium.spMin,
        letterSpacing: 0,
      ),
      mobile: textTheme.titleSmall?.copyWith(
        fontSize: sizeSmall.spMin,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle textStyleLabel(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final sizeLarge = textTheme.labelLarge?.fontSize ?? 0;
    final sizeMedium = textTheme.labelMedium?.fontSize ?? 0;
    final sizeSmall = textTheme.labelSmall?.fontSize ?? 0;
    return screenBreakPoint<TextStyle>(
      desktop: textTheme.labelLarge!.copyWith(
        fontSize: sizeLarge.spMin < sizeMedium ? sizeMedium : sizeLarge.spMin,
        letterSpacing: 0,
      ),
      tablet: textTheme.labelMedium?.copyWith(
        fontSize: sizeMedium.spMin < sizeSmall ? sizeSmall : sizeMedium.spMin,
        letterSpacing: 0,
      ),
      mobile: textTheme.labelSmall?.copyWith(
        fontSize: sizeSmall.spMin,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle textStyleBody(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final sizeLarge = textTheme.bodyLarge?.fontSize ?? 0;
    final sizeMedium = textTheme.bodyMedium?.fontSize ?? 0;
    final sizeSmall = textTheme.bodySmall?.fontSize ?? 0;
    return screenBreakPoint<TextStyle>(
      desktop: textTheme.bodyLarge!.copyWith(
        fontSize: sizeLarge.spMin < sizeMedium ? sizeMedium : sizeLarge.spMin,
        letterSpacing: 0,
      ),
      tablet: textTheme.bodyMedium?.copyWith(
        fontSize: sizeMedium.spMin < sizeSmall ? sizeSmall : sizeMedium.spMin,
        letterSpacing: 0,
      ),
      mobile: textTheme.bodySmall?.copyWith(
        fontSize: sizeSmall.spMin,
        letterSpacing: 0,
      ),
    );
  }

  double iconSizeDisplay(BuildContext context) =>
      (textStyleDisplay(context).fontSize ?? 0) + 10;
  double iconSizeHeadline(BuildContext context) =>
      (textStyleHeadline(context).fontSize ?? 0) + 10;
  double iconSizeTitle(BuildContext context) =>
      (textStyleTitle(context).fontSize ?? 0) + 10;
  double iconSizeLabel(BuildContext context) =>
      (textStyleLabel(context).fontSize ?? 0) + 10;
  double iconSizeBody(BuildContext context) =>
      (textStyleBody(context).fontSize ?? 0) + 10;
}
