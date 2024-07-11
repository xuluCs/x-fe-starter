import 'package:fe_starter_project_templete/core/services/local_preference_service.dart';
import 'package:fe_starter_project_templete/features/onboarding/views/onboarding_view.dart';
import 'package:fe_starter_project_templete/features/onboarding/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fe_starter_project_templete/components/views/error_page.dart';
import 'package:fe_starter_project_templete/core/services/system_service.dart';
import 'package:fe_starter_project_templete/features/auth/views/login_view.dart';
import 'package:fe_starter_project_templete/features/auth/views/signup_view.dart';
import 'package:fe_starter_project_templete/features/home/views/home_view.dart';

class AppRoutes {
  final GoRouter router;

  AppRoutes()
      : router = GoRouter(
          navigatorKey: GlobalKey<NavigatorState>(),
          debugLogDiagnostics: true,
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
          initialLocation: '/',
          routes: <RouteBase>[
            GoRoute(
              path: '/',
              builder: (context, state) => const SplashScreen(),
            ),
            GoRoute(
              path: '/onboarding',
              builder: (context, state) => const OnboardingView(),
            ),
            GoRoute(
              path: '/login',
              builder: (context, state) {
                return LoginView();
              },
            ),
            GoRoute(
              path: '/home',
              builder: (context, state) {
                return const HomeView();
              },
            ),
            GoRoute(
              path: '/sign_up',
              name: 'sign_up',
              builder: (context, state) {
                return SignUpView();
              },
            ),
          ],
        );
}
