import 'package:fe_starter_project_templete/core/models/language/language_model.dart';

class LanguageIntlModel {
  String? intlId;
  int? languageId;
  String? lang;
  LanguageModel? intls;

  LanguageIntlModel({this.intlId, this.languageId, this.intls, this.lang});

  LanguageIntlModel.fromJson(Map<String, dynamic> json) {
    intlId = json['intlId'];
    languageId = json['languageId'];
    lang = json['lang'];
    if (json['intls'] != null) intls = LanguageModel.fromJson(json['intls']);
  }
}
