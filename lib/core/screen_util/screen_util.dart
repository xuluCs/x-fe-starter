
import 'package:fe_starter_project_templete/core/screen_util/screen_util_function.dart';
import 'package:fe_starter_project_templete/core/screen_util/screen_util_widget.dart';

class MyScreen with ScreenUtilFunction, ScreenUtilWidget {
  static final MyScreen _singleton = MyScreen._internal();
  MyScreen._internal();
  factory MyScreen() => _singleton;
}
