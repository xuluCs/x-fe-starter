import 'package:flutter/material.dart';
import 'package:fe_starter_project_templete/core/extensions/logger.dart';

class MyNavigationObserver extends NavigatorObserver {
  final void Function(Route route) onNavigate;

  MyNavigationObserver({required this.onNavigate});

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    onNavigate(route);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    onNavigate(route);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    onNavigate(route);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    onNavigate(newRoute!);
  }
}

class AnalyticsService {
  static void logNavigationEvent(String routeName) {
    'Navigated to $routeName'.logger();
  }
}
