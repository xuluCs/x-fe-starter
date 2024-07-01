// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeStore on ThemeStoreBase, Store {
  late final _$valueSwitchAtom =
      Atom(name: 'ThemeStoreBase.valueSwitch', context: context);

  @override
  String get valueSwitch {
    _$valueSwitchAtom.reportRead();
    return super.valueSwitch;
  }

  @override
  set valueSwitch(String value) {
    _$valueSwitchAtom.reportWrite(value, super.valueSwitch, () {
      super.valueSwitch = value;
    });
  }

  late final _$listThemeAtom =
      Atom(name: 'ThemeStoreBase.listTheme', context: context);

  @override
  ObservableList<String> get listTheme {
    _$listThemeAtom.reportRead();
    return super.listTheme;
  }

  @override
  set listTheme(ObservableList<String> value) {
    _$listThemeAtom.reportWrite(value, super.listTheme, () {
      super.listTheme = value;
    });
  }

  late final _$appThemeAtom =
      Atom(name: 'ThemeStoreBase.appTheme', context: context);

  @override
  ThemeData get appTheme {
    _$appThemeAtom.reportRead();
    return super.appTheme;
  }

  @override
  set appTheme(ThemeData value) {
    _$appThemeAtom.reportWrite(value, super.appTheme, () {
      super.appTheme = value;
    });
  }

  late final _$themeModelAtom =
      Atom(name: 'ThemeStoreBase.themeModel', context: context);

  @override
  ThemeModel? get themeModel {
    _$themeModelAtom.reportRead();
    return super.themeModel;
  }

  @override
  set themeModel(ThemeModel? value) {
    _$themeModelAtom.reportWrite(value, super.themeModel, () {
      super.themeModel = value;
    });
  }

  late final _$initializeThemeAsyncAction =
      AsyncAction('ThemeStoreBase.initializeTheme', context: context);

  @override
  Future<dynamic> initializeTheme() {
    return _$initializeThemeAsyncAction.run(() => super.initializeTheme());
  }

  @override
  String toString() {
    return '''
valueSwitch: ${valueSwitch},
listTheme: ${listTheme},
appTheme: ${appTheme},
themeModel: ${themeModel}
    ''';
  }
}
