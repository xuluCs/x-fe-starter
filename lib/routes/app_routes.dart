import 'package:fe_starter_project_templete/core/services/local_preference_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fe_starter_project_templete/components/view/error_page.dart';
import 'package:fe_starter_project_templete/core/services/system_service.dart';
import 'package:fe_starter_project_templete/features/auth/views/login_view.dart';
import 'package:fe_starter_project_templete/features/auth/views/signup_view.dart';
import 'package:fe_starter_project_templete/features/todo/views/home_view.dart';
import 'package:fe_starter_project_templete/core/utils/route_path.dart';

class AppRoutes {
  final GoRouter router;

  AppRoutes()
      : router = GoRouter(
          navigatorKey: GlobalKey<NavigatorState>(),
          initialLocation: RoutePath.init,
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.home,
              builder: (context, state) {
                return const HomeView();
              },
            ),
            GoRoute(
              path: RoutePath.signUp,
              builder: (context, state) {
                return SignUpView();
              },
            ),
            GoRoute(
              path: RoutePath.init,
              builder: (context, state) {
                return LoginView();
              },
            )
          ],
          observers: [
            MyNavigationObserver(
              onNavigate: (route) {
                AnalyticsService.logNavigationEvent(
                    route.settings.name ?? 'Unknown');
              },
            ),
          ],
          errorBuilder: (context, state) {
            return ErrorView(
              error: state.error,
            );
          },
          redirect: (context, state) {
            final loggedIn = LocalPreferenceService.getAccessToken().isEmpty;
            if (!loggedIn) {
              return RoutePath.home;
            }
            return RoutePath.init;
          },
        );
}
