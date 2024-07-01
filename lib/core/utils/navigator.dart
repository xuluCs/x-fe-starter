import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigatorKey {
  const AppNavigatorKey._();

  static final GlobalKey<NavigatorState> _appNavigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> get() => _appNavigatorKey;

  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  static GlobalKey<ScaffoldMessengerState> getScaffoldMessengerKey() => scaffoldMessengerKey;
}

mixin NavigatorMixin {
  void pop<T>(BuildContext context, {T? result}) => Navigator.pop(context, result);

  // bool popNamed() => AppNavigatorKey.get().currentContext?.beamBack() ?? false;

  void pushNamed<T>({
    required String name,
    Object? argument,
  }) =>
      AppNavigatorKey.get().currentContext?.goNamed(name, extra: argument);

  void pushAndPopNamed<T>({
    required String name,
    Object? argument,
  }) {
    AppNavigatorKey.get().currentContext?.pop();
    AppNavigatorKey.get().currentContext?.goNamed(name, extra: argument);
  }

  void pushReplacementNamed<T>({
    required String name,
    String? until,
    Object? argument,
  }) =>
      AppNavigatorKey.get().currentContext?.pushReplacementNamed(name, extra: argument);

  void pushNamedAndRemoveAllNamed<T>({
    required String name,
    String? until,
    Object? argument,
  }) {
    GoRouter.of(AppNavigatorKey.get().currentContext!).routerDelegate.currentConfiguration.matches.clear();
    AppNavigatorKey.get().currentContext?.goNamed(name, extra: argument);
  }
}
