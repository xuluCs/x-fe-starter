import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fe_starter_project_templete/core/services/local_preference_service.dart';
import 'package:fe_starter_project_templete/features/auth/stores/auth_store.dart';
import 'package:fe_starter_project_templete/features/todo/stores/todo_store.dart';
import 'package:fe_starter_project_templete/injection.dart';
import 'package:fe_starter_project_templete/routes/app_routes.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupSl();
  await LocalPreferenceService.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => sl<TodoStore>()),
        Provider(create: (_) => sl<AuthStore>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp.router(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade700),
            useMaterial3: true,
          ),
          routerConfig: AppRoutes().router,
        ),
      ),
    );
  }
}
