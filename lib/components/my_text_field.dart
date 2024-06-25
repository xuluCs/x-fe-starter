import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key, required this.controller, this.hintText, this.labelText});

  final TextEditingController controller;
  final String? hintText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(),
          ),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.2),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 12)),
    );
  }
}
