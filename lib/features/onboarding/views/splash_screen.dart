import 'package:fe_starter_project_templete/components/components.dart';
import 'package:fe_starter_project_templete/core/screen_util/screen_util.dart';
import 'package:fe_starter_project_templete/core/services/local_preference_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = MyScreen().colorDisplay(context);

    Map<String, dynamic> styleSplash = {
      "position_logo":
          "center", //center, topLeft, topRight, bottomLeft, bottomRight
      "bg_color": 0xFF365365
    };

    final loggedIn = LocalPreferenceService.getAccessToken().isEmpty;
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (!loggedIn) {
        context.go('/home');
      } else {
        context.go('/onboarding');
      }
    });

    return Scaffold(
      backgroundColor: Color(styleSplash['bg_color']),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: styleSplash['position_logo'] == 'topLeft'
                  ? Alignment.topLeft
                  : styleSplash['position_logo'] == 'topRight'
                      ? Alignment.topRight
                      : styleSplash['position_logo'] == 'bottomLeft'
                          ? Alignment.bottomLeft
                          : styleSplash['position_logo'] == 'bottomRight'
                              ? Alignment.bottomRight
                              : Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(
                    MyScreen().screenBreakPoint(desktop: 40, mobile: 20)),
                child: const SvgWidget(
                  iconData: 'app_logo',
                  height: 80,
                  width: 80,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
