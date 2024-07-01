import 'dart:convert';

import 'package:fe_starter_project_templete/core/config/theme_config.dart';
import 'package:fe_starter_project_templete/core/models/language/language_model.dart';
import 'package:fe_starter_project_templete/core/models/theme/theme_model.dart';
import 'package:fe_starter_project_templete/core/services/local_preference_service.dart';
import 'package:fe_starter_project_templete/core/stores/language/language_store.dart';
import 'package:fe_starter_project_templete/core/utils/navigator.dart';
import 'package:fe_starter_project_templete/core/config/injection.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'theme_store.g.dart';

class ThemeStore = ThemeStoreBase with _$ThemeStore;

abstract class ThemeStoreBase with Store, NavigatorMixin {
  final _language = sl<LanguageStore>();
  LanguageModel get language => _language.word;

  @observable
  String valueSwitch = LocalPreferenceService.getThemeMode();

  @observable
  ObservableList<String> listTheme = ObservableList.of(["Light", "Dark"]);

  @observable
  ThemeData appTheme = lightThemeData();

  @observable
  ThemeModel? themeModel;

  @action
  Future initializeTheme() async {
    final theme = LocalPreferenceService.getTheme();
    if (theme != null) {
      themeModel = ThemeModel.fromJson(jsonDecode(theme));
      appTheme = customeThemeData(themeModel!);
    } else {
      // BackendCallbackDataModel? result = await MenuBloc().themeData(theme: valueSwitch);
      // final data = firstDataInList(result?.listData);
      // if (data != null) {
      //   LocalPreferenceService.setTheme(jsonEncode(data));
      //   themeModel = ThemeModel.fromJson(data);
      //   appTheme = customeThemeData(themeModel!);
      // }
    }
  }

  // @action
  // Future onChangeTheme(BuildContext context, {required String theme}) async {
  //   _generalDialog.loadingDialog(context);
  //   BackendCallbackDataModel? result = await MenuBloc().themeData(theme: theme);
  //   final data = firstDataInList(result?.listData);

  //   if (data == null) throw Error();

  //   LocalPreferenceService.setTheme(jsonEncode(data));
  //   LocalPreferenceService.setThemeMode(theme);

  //   final themeModel = ThemeModel.fromJson(data);
  //   appTheme = customeThemeData(themeModel);
  //   valueSwitch = LocalPreferenceService.getThemeMode();
  //   if (_generalListStore.view == GeneralListDataView.pivot) _generalListStore.onRefresh(context);
  //   pop(context);
  // }
}
