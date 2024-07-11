import 'package:fe_starter_project_templete/core/screen_util/screen_util.dart';
import 'package:fe_starter_project_templete/core/utils/assets_key.dart';
import 'package:flutter/material.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.illustration,
    required this.title,
    required this.text,
  });

  final String? title, text;
  final String illustration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MyScreen().screenBreakPoint(desktop: 40, mobile: 20)),
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: Center(
                child: Image.asset(
                  '$assetsImage/$illustration.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            title!,
            style: MyScreen().textStyleTitle(context).copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            text!,
            style: MyScreen().textStyleTitle(context),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
