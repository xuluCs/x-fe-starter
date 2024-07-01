class ColorSchemeModel {
  String? error;
  String? surface;
  String? primary;
  String? secondary;
  String? background;
  String? onError;
  String? onSurface;
  String? onPrimary;
  String? onSecondary;
  String? onBackground;
  String? primaryContainer;
  String? secondaryContainer;
  String? shadow;
  String? scrim;
  String? surfaceTint;
  String? surfaceVariant;

  ColorSchemeModel({
    this.error,
    this.surface,
    this.primary,
    this.secondary,
    this.background,
    this.onError,
    this.onSurface,
    this.onPrimary,
    this.onSecondary,
    this.onBackground,
    this.primaryContainer,
    this.secondaryContainer,
    this.shadow,
    this.scrim,
    this.surfaceTint,
    this.surfaceVariant,
  });

  ColorSchemeModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    surface = json['surface'];
    primary = json['primary'];
    secondary = json['secondary'];
    background = json['background'];
    onError = json['onError'];
    onSurface = json['onSurface'];
    onPrimary = json['onPrimary'];
    onSecondary = json['onSecondary'];
    onBackground = json['onBackground'];
    primaryContainer = json['primaryContainer'];
    secondaryContainer = json['secondaryContainer'];
    shadow = json['shadow'];
    scrim = json['scrim'];
    surfaceTint = json['surfaceTint'];
    surfaceVariant = json['surfaceVariant'];
  }
}
