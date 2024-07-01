import 'package:fe_starter_project_templete/core/extensions/logger.dart';
import 'package:fe_starter_project_templete/core/models/language/language_data_model.dart';
import 'package:fe_starter_project_templete/core/models/language/language_model.dart';
import 'package:fe_starter_project_templete/core/services/local_preference_service.dart';
import 'package:fe_starter_project_templete/core/utils/navigator.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:collection/collection.dart';

part 'language_store.g.dart';

class LanguageStore = LanguageStoreBase with _$LanguageStore;

abstract class LanguageStoreBase with Store, NavigatorMixin {
  @observable
  String locale = LocalPreferenceService.getLanguage();

  @observable
  LanguageModel word = LanguageModel();

  @observable
  ObservableList<LanguageDataModel> listLanguage = ObservableList<LanguageDataModel>();

  @action
  Future loadLanguage(BuildContext context, {required String value}) async {
    try {
      locale = listLanguage.firstWhereOrNull((element) => element.language == value)?.lang ?? LocalPreferenceService.getLanguage();
      LocalPreferenceService.setLanguage(locale);
      // final result = await MenuBloc().intlData();
      // final intl = LanguageIntlModel.fromJson(result?.listData);
      // word = intl.intls!;
      // pop(context);
    } catch (e) {
      "Error LoadLanguage : $e".logger();
    }
  }
}
