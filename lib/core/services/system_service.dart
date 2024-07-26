import 'package:fe_starter_project_templete/core/models/backend_callback_model.dart';
import 'package:fe_starter_project_templete/core/services/local_preference_service.dart';
import 'package:fe_starter_project_templete/core/utils/navigator.dart';
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

int colorFromString(String? hex) {
  if (hex == null || hex.length < 6) hex = "#FFFFFF";

  try {
    hex = hex.replaceFirst('#', '');
    hex = hex.length == 6 ? 'ff$hex' : hex;
    return int.parse(hex, radix: 16);
  } catch (e) {
    "Parse string to int in colorFromString error : $e".logger();
    return int.parse("ffFFFFFF", radix: 16);
  }
}

String setupToken() {
  String token = LocalPreferenceService.getAccessToken();
  final context = AppNavigatorKey.get().currentContext;
  if (context != null) {
    token = LocalPreferenceService.getAccessToken();
  }
  return token;
}

Future responseHandler(
  BuildContext context, {
  required BackendCallbackModel? response,
  Future Function(BackendCallbackModel? response)? whenSuccess,
  Future Function(BackendCallbackModel? response)?
      whenFailed,
  Future Function(BackendCallbackModel? response)? whenError,
}) async {
  /// check if [status] is success or failed
  final responseStatus = (response?.status ?? 500);

  if (responseStatus < 299) {
    if (whenSuccess != null) await whenSuccess(response);
  } else {
    if (whenFailed != null) {
      await whenFailed(
          response);
    }
    if (whenError != null) {
      await whenError(response);
    }
  }
}