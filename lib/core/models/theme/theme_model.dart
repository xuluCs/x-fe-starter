import 'package:fe_starter_project_templete/core/models/theme/themes_model.dart';

class ThemeModel {
  String? theme;
  ThemesModel? themes;

  ThemeModel({this.theme, this.themes});

  ThemeModel.fromJson(Map<String, dynamic> json) {
    theme = json['theme'];
    if (json['themes'] != null) {
      themes = ThemesModel.fromJson(json['themes']);
    }
  }
}
