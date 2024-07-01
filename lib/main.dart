import 'package:fe_starter_project_templete/initial_app.dart';
import 'package:flutter/material.dart';
import 'package:fe_starter_project_templete/core/services/local_preference_service.dart';
import 'package:fe_starter_project_templete/core/config/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupSl();
  await LocalPreferenceService.getInstance();
  runApp(const InitalApp());
}
