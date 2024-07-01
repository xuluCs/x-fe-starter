// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LanguageStore on LanguageStoreBase, Store {
  late final _$localeAtom =
      Atom(name: 'LanguageStoreBase.locale', context: context);

  @override
  String get locale {
    _$localeAtom.reportRead();
    return super.locale;
  }

  @override
  set locale(String value) {
    _$localeAtom.reportWrite(value, super.locale, () {
      super.locale = value;
    });
  }

  late final _$wordAtom =
      Atom(name: 'LanguageStoreBase.word', context: context);

  @override
  LanguageModel get word {
    _$wordAtom.reportRead();
    return super.word;
  }

  @override
  set word(LanguageModel value) {
    _$wordAtom.reportWrite(value, super.word, () {
      super.word = value;
    });
  }

  late final _$listLanguageAtom =
      Atom(name: 'LanguageStoreBase.listLanguage', context: context);

  @override
  ObservableList<LanguageDataModel> get listLanguage {
    _$listLanguageAtom.reportRead();
    return super.listLanguage;
  }

  @override
  set listLanguage(ObservableList<LanguageDataModel> value) {
    _$listLanguageAtom.reportWrite(value, super.listLanguage, () {
      super.listLanguage = value;
    });
  }

  late final _$loadLanguageAsyncAction =
      AsyncAction('LanguageStoreBase.loadLanguage', context: context);

  @override
  Future<dynamic> loadLanguage(BuildContext context, {required String value}) {
    return _$loadLanguageAsyncAction
        .run(() => super.loadLanguage(context, value: value));
  }

  @override
  String toString() {
    return '''
locale: ${locale},
word: ${word},
listLanguage: ${listLanguage}
    ''';
  }
}
