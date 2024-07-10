import 'package:flutter/material.dart';
import 'package:fe_starter_project_templete/core/screen_util/screen_util_extension.dart';

mixin ScreenUtilWidget {
  SizedBox screenGapRadius({num? radius}) {
    final scaleRadius = (((radius?.r ?? 0) < (radius ?? 0) ? radius?.r : radius) ?? 0).toDouble();
    return SizedBox(width: scaleRadius, height: scaleRadius);
  }

  SizedBox screenGapSize({num? width, num? height}) {
    final scaleWidth = (((width?.w ?? 0) < (width ?? 0) ? width?.w : width) ?? 0).toDouble();
    final scaleHeight = (((height?.h ?? 0) < (height ?? 0) ? height?.h : height) ?? 0).toDouble();
    return SizedBox(width: scaleWidth, height: scaleHeight);
  }

  // List<BoxShadow> get boxShadow {
  //   // final color = sl<ThemeStore>().appTheme.colorScheme.shadow;
  //   return [
  //     BoxShadow(
  //       color: color.withOpacity(0.25),
  //       blurRadius: 8,
  //     ),
  //   ];
  // }

  BorderRadius get borderRadius5 => BorderRadius.circular(5);
  BorderRadius get borderRadius10 => BorderRadius.circular(10);
  BorderRadius get borderRadius15 => BorderRadius.circular(15);
  BorderRadius get borderRadius20 => BorderRadius.circular(20);
  BorderRadius get borderRadius100 => BorderRadius.circular(100);
  Radius get radius5 => const Radius.circular(5);
  Radius get radius10 => const Radius.circular(10);
  Radius get radius15 => const Radius.circular(15);
  Radius get radius20 => const Radius.circular(20);
  Radius get radius100 => const Radius.circular(100);
}
