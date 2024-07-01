import 'dart:math';
import 'package:fe_starter_project_templete/core/utils/enum_key.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';

part 'screen_util_store.g.dart';

class ScreenUtilStore = ScreenUtilStoreBase with _$ScreenUtilStore;

abstract class ScreenUtilStoreBase with Store {
  @observable
  BreakPoint? event;

  @computed
  bool get isDesktop => event == BreakPoint.desktop;
  @computed
  bool get isTablet => event == BreakPoint.tablet;
  @computed
  bool get isMobile => event == BreakPoint.mobile;
  @computed
  Size get designCanvas => isMobile
      ? const Size(360, 640)
      : isTablet
          ? const Size(834, 1194)
          : const Size(1728, 1117);

  @observable
  double keyboardHeight = 0;
  @observable
  double sw = 0;
  @observable
  double sh = 0;
  @observable
  Orientation deviceOrientation = Orientation.landscape;

  @action
  void onInitializeScreenUtil(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    sw = mediaQueryData.size.width;
    sh = mediaQueryData.size.height;
    deviceOrientation = mediaQueryData.orientation;

    event = BreakPoint.mobile;
    if (sw > 600) event = BreakPoint.tablet;
    if (sw > 1024) event = BreakPoint.desktop;
  }

  @computed
  double get scaleWidth => sw / designCanvas.width;
  @computed
  double get scaleHeight => sh / designCanvas.height;
  @computed
  double get scaleText => scaleWidth;

  @action
  double setWidth(num width) => width * scaleWidth;
  @action
  double setHeight(num height) => height * scaleHeight;
  @action
  double radius(num r) => r * min(scaleWidth, scaleHeight);
  @action
  double setSp(num fontSize) => fontSize * scaleText;
}
