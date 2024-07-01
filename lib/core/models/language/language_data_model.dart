class LanguageDataModel {
  String? language;
  String? lang;
  int? languageId;
  String? updatedAt;

  LanguageDataModel({this.language, this.lang, this.languageId, this.updatedAt});

  LanguageDataModel.fromJson(Map<String, dynamic> json) {
    language = json['language'];
    lang = json['lang'];
    languageId = json['language_id'];
    updatedAt = json['updated_at'];
  }
}
