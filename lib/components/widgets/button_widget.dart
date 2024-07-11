import 'package:fe_starter_project_templete/core/screen_util/screen_util.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.color,
    this.textStyle,
    this.textColor,
    required this.onTap,
    required this.text,
  });

  final Color? color, textColor;
  final TextStyle? textStyle;
  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: MyScreen().borderRadius20,
        ),
        child: Text(
          text,
          style: MyScreen().textStyleHeadline(context).copyWith(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
