import 'package:fe_starter_project_templete/core/extensions/logger.dart';
import 'package:fe_starter_project_templete/core/utils/assets_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgWidget extends StatelessWidget {
  final Color? color;
  final String iconData;
  final double? width;
  final double? height;
  final Widget Function(BuildContext)? placeHolderBuilder;
  const SvgWidget({
    super.key,
    required this.iconData,
    this.color,
    this.width,
    this.height,
    this.placeHolderBuilder,
  });

  @override
  Widget build(BuildContext context) {
    "icondata: $assetsVector/${iconData}.svg".logger();
    return SvgPicture.asset(
      '$assetsVector/$iconData.svg',
      width: width,
      height: height,
      placeholderBuilder: placeHolderBuilder,
    );
  }
}
