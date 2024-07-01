import 'dart:math';
import 'package:fe_starter_project_templete/core/stores/screen_util/screen_util_store.dart';
import 'package:fe_starter_project_templete/core/config/injection.dart';

extension ScreenUtilExtension on num {
  ScreenUtilStore screenUtil() => sl<ScreenUtilStore>();

  /// Screen width
  double get sw => (this / 100) * screenUtil().sw;

  /// Screen height
  double get sh => (this / 100) * screenUtil().sh;

  /// Widget width
  double get w => screenUtil().setWidth(this);

  /// Widget height
  double get h => screenUtil().setHeight(this);

  /// Widget radius
  double get r => screenUtil().radius(this);

  /// Widget square pixel, Often used for [fontSize]
  double get sp => screenUtil().setSp(this);

  ///smart size :  it check your value - if it is bigger than your value it will set your value
  ///for example, you have set 16.sm() , if for your screen 16.sp() is bigger than 16 , then it will set 16 not 16.sp()
  ///I think that it is good for save size balance on big sizes of screen
  double get spMin => min(toDouble(), sp);

  double get spMax => max(toDouble(), sp);
}
