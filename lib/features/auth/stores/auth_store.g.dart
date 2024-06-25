// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStore, Store {
  late final _$loginAtom = Atom(name: '_AuthStore.login', context: context);

  @override
  Login get login {
    _$loginAtom.reportRead();
    return super.login;
  }

  @override
  set login(Login value) {
    _$loginAtom.reportWrite(value, super.login, () {
      super.login = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_AuthStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_AuthStore.errorMessage', context: context);

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$loginUserAsyncAction =
      AsyncAction('_AuthStore.loginUser', context: context);

  @override
  Future<void> loginUser(String email, dynamic password, BuildContext context) {
    return _$loginUserAsyncAction
        .run(() => super.loginUser(email, password, context));
  }

  @override
  String toString() {
    return '''
login: ${login},
isLoading: ${isLoading},
errorMessage: ${errorMessage}
    ''';
  }
}
