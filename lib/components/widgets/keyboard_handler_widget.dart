import 'dart:async';
import 'package:fe_starter_project_templete/core/config/injection.dart';
import 'package:fe_starter_project_templete/core/screen_util/screen_util.dart';
import 'package:fe_starter_project_templete/core/stores/screen_util/screen_util_store.dart';
import 'package:flutter/material.dart';

class KeyboardHandlerWidget extends StatefulWidget {
  final Widget child;

  const KeyboardHandlerWidget({super.key, required this.child});

  @override
  State<KeyboardHandlerWidget> createState() => _KeyboardHandlerWidgetState();
}

class _KeyboardHandlerWidgetState extends State<KeyboardHandlerWidget> with WidgetsBindingObserver {
  final screenUtil = sl<ScreenUtilStore>();
  Timer? stillAnimated;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeMetrics() {
    /// To get size of the keyboard when show up
    screenUtil.keyboardHeight = MyScreen().mobileKeyboardSize(context);

    /// Reset callback unfocus when still animating
    if (stillAnimated != null) stillAnimated?.cancel();

    /// Set callback when keyboard finish animating
    stillAnimated = Timer(const Duration(milliseconds: 100), () async {
      screenUtil.keyboardHeight = MyScreen().mobileKeyboardSize(context);
      if (screenUtil.keyboardHeight == 0) {
        FocusManager.instance.primaryFocus?.unfocus();
        FocusScope.of(context).unfocus();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        FocusScope.of(context).unfocus();
      },
      child: widget.child,
    );
  }
}
