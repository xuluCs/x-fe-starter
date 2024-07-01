class TextThemeModel {
  num? displayLarge;
  num? displayMedium;
  num? displaySmall;
  num? headlineLarge;
  num? headlineMedium;
  num? headlineSmall;
  num? titleLarge;
  num? titleMedium;
  num? titleSmall;
  num? labelLarge;
  num? labelMedium;
  num? labelSmall;
  num? bodyLarge;
  num? bodyMedium;
  num? bodySmall;

  TextThemeModel({
    this.displayLarge,
    this.displayMedium,
    this.displaySmall,
    this.headlineLarge,
    this.headlineMedium,
    this.headlineSmall,
    this.titleLarge,
    this.titleMedium,
    this.titleSmall,
    this.labelLarge,
    this.labelMedium,
    this.labelSmall,
    this.bodyLarge,
    this.bodyMedium,
    this.bodySmall,
  });

  TextThemeModel.fromJson(Map<String, dynamic> json) {
    displayLarge = json['displayLarge'];
    displayMedium = json['displayMedium'];
    displaySmall = json['displaySmall'];
    headlineLarge = json['headlineLarge'];
    headlineMedium = json['headlineMedium'];
    headlineSmall = json['headlineSmall'];
    titleLarge = json['titleLarge'];
    titleMedium = json['titleMedium'];
    titleSmall = json['titleSmall'];
    labelLarge = json['labelLarge'];
    labelMedium = json['labelMedium'];
    labelSmall = json['labelSmall'];
    bodyLarge = json['bodyLarge'];
    bodyMedium = json['bodyMedium'];
    bodySmall = json['bodySmall'];
  }
}
