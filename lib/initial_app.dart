import 'package:fe_starter_project_templete/components/widgets/keyboard_handler_widget.dart';
import 'package:fe_starter_project_templete/core/config/injection.dart';
import 'package:fe_starter_project_templete/core/stores/screen_util/screen_util_store.dart';
import 'package:fe_starter_project_templete/core/stores/theme/theme_store.dart';
import 'package:fe_starter_project_templete/features/auth/stores/auth_store.dart';
import 'package:fe_starter_project_templete/features/home/stores/todo_store.dart';
import 'package:fe_starter_project_templete/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class InitalApp extends StatefulWidget {
  const InitalApp({super.key});

  @override
  State<InitalApp> createState() => _InitalAppState();
}

class _InitalAppState extends State<InitalApp> {
  final screenUtil = sl<ScreenUtilStore>();
  final theme = sl<ThemeStore>();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => sl<TodoStore>()),
        Provider(create: (_) => sl<AuthStore>()),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          screenUtil.onInitializeScreenUtil(context);
          return Observer(
            builder: (context) {
              final textTheme = theme.themeModel?.themes?.textTheme;
              const textStyle = TextStyle(
                  fontWeight: FontWeight.normal, fontFamily: "Quicksand");
      
              return Theme(
                data: theme.appTheme.copyWith(
                  textTheme: TextTheme(
                    displayLarge: textStyle.copyWith(
                        fontSize: (textTheme?.displayLarge ?? 57).toDouble()),
                    displayMedium: textStyle.copyWith(
                        fontSize:
                            (textTheme?.displayMedium ?? 45).toDouble()),
                    displaySmall: textStyle.copyWith(
                        fontSize: (textTheme?.displaySmall ?? 36).toDouble()),
                    headlineLarge: textStyle.copyWith(
                        fontSize:
                            (textTheme?.headlineLarge ?? 32).toDouble()),
                    headlineMedium: textStyle.copyWith(
                        fontSize:
                            (textTheme?.headlineMedium ?? 28).toDouble()),
                    headlineSmall: textStyle.copyWith(
                        fontSize:
                            (textTheme?.headlineSmall ?? 24).toDouble()),
                    titleLarge: textStyle.copyWith(
                        fontSize: (textTheme?.titleLarge ?? 22).toDouble()),
                    titleMedium: textStyle.copyWith(
                        fontSize: (textTheme?.titleMedium ?? 16).toDouble()),
                    titleSmall: textStyle.copyWith(
                        fontSize: (textTheme?.titleSmall ?? 14).toDouble()),
                    labelLarge: textStyle.copyWith(
                        fontSize: (textTheme?.labelLarge ?? 14).toDouble()),
                    labelMedium: textStyle.copyWith(
                        fontSize: (textTheme?.labelMedium ?? 12).toDouble()),
                    labelSmall: textStyle.copyWith(
                        fontSize: (textTheme?.labelSmall ?? 11).toDouble()),
                    bodyLarge: textStyle.copyWith(
                        fontSize: (textTheme?.bodyLarge ?? 16).toDouble()),
                    bodyMedium: textStyle.copyWith(
                        fontSize: (textTheme?.bodyMedium ?? 14).toDouble()),
                    bodySmall: textStyle.copyWith(
                        fontSize: (textTheme?.bodySmall ?? 12).toDouble()),
                  ).apply(
                    bodyColor: theme.appTheme.colorScheme.onSurface,
                    displayColor: theme.appTheme.colorScheme.onSurface,
                  ),
                ),
                child: KeyboardHandlerWidget(
                  child: Builder(
                    builder: (context) {
                      // if (kIsWeb &&
                      //     (notification.browser?.browserName ==
                      //         BrowserName.safari)) {
                      //   return Material(
                      //     child: Stack(
                      //       children: [
                      //         child!,
                      //         ValueListenableBuilder(
                      //           valueListenable:
                      //               notification.showNotificationSafari,
                      //           builder: (context, showNotification, _) =>
                      //               AnimatedPositioned(
                      //             left: 100.sw -
                      //                 (showNotification
                      //                     ? ((100.sw > 380 ? 380 : 90.sw) + 24)
                      //                     : 0),
                      //             top: 24,
                      //             duration: Duration(milliseconds: 500),
                      //             curve: Curves.fastOutSlowIn,
                      //             child: ValueListenableBuilder(
                      //               valueListenable: notification
                      //                   .showNotificationWidgetOnSafari,
                      //               builder: (context, showWidget, _) =>
                      //                   showWidget
                      //                       ? SafariNotificationWidget()
                      //                       : SizedBox.shrink(),
                      //             ),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   );
                      // }
                      return child!;
                    },
                  ),
                ),
              );
            },
          );
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade700),
          useMaterial3: true,
        ),
        routerConfig: AppRoutes().router,
      ),
    );
  }
}
