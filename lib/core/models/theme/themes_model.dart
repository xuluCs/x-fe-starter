import 'package:fe_starter_project_templete/core/models/theme/themes/color_scheme_model.dart';
import 'package:fe_starter_project_templete/core/models/theme/themes/text_theme_model.dart';

class ThemesModel {
  ColorSchemeModel? colorScheme;
  TextThemeModel? textTheme;

  ThemesModel({
    this.colorScheme,
    this.textTheme,
  });

  ThemesModel.fromJson(Map<String, dynamic> json) {
    if (json['colorScheme'] != null) {
      colorScheme = ColorSchemeModel.fromJson(json['colorScheme']);
    }
    if (json['textTheme'] != null) {
      textTheme = TextThemeModel.fromJson(json['textTheme']);
    }
  }
}
