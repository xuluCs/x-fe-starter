import 'package:fe_starter_project_templete/core/screen_util/screen_util.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key, required this.controller, this.hintText, this.labelText});

  final TextEditingController controller;
  final String? hintText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    final color = MyScreen().colorDisplay(context);
    return TextFormField(
      controller: controller,
      style: MyScreen().textStyleTitle(context).copyWith(
            fontWeight: FontWeight.bold,
            color: color.secondary,
          ),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        labelStyle: MyScreen().textStyleTitle(context).copyWith(
              fontWeight: FontWeight.bold,
              color: color.secondary,
            ),
        hintStyle: MyScreen().textStyleTitle(context).copyWith(
              fontWeight: FontWeight.bold,
              color: color.secondary,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(),
        ),
        filled: true,
        fillColor: Colors.grey.withOpacity(0.2),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
      ),
    );
  }
}
