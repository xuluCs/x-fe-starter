import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final TextStyle? textStyle;
  final String textToDisplay;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const TextWidget({
    super.key,
    required this.textToDisplay,
    required this.textStyle,
    this.maxLines,
    this.textAlign,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textToDisplay,
      style: textStyle,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.center,
      overflow: textOverflow ?? TextOverflow.clip,
    );
  }
}
