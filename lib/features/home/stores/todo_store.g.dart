// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoStore on _TodoStore, Store {
  late final _$usersAtom = Atom(name: '_TodoStore.users', context: context);

  @override
  ObservableList<User> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(ObservableList<User> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  late final _$userAtom = Atom(name: '_TodoStore.user', context: context);

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_TodoStore.isLoading', context: context);

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
      Atom(name: '_TodoStore.errorMessage', context: context);

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

  late final _$getUsersAsyncAction =
      AsyncAction('_TodoStore.getUsers', context: context);

  @override
  Future<void> getUsers() {
    return _$getUsersAsyncAction.run(() => super.getUsers());
  }

  late final _$getUserByIdAsyncAction =
      AsyncAction('_TodoStore.getUserById', context: context);

  @override
  Future<void> getUserById(String id) {
    return _$getUserByIdAsyncAction.run(() => super.getUserById(id));
  }

  late final _$deleteUserAsyncAction =
      AsyncAction('_TodoStore.deleteUser', context: context);

  @override
  Future<void> deleteUser(String id) {
    return _$deleteUserAsyncAction.run(() => super.deleteUser(id));
  }

  late final _$editUserAsyncAction =
      AsyncAction('_TodoStore.editUser', context: context);

  @override
  Future<void> editUser(UserRequest user, String idUser) {
    return _$editUserAsyncAction.run(() => super.editUser(user, idUser));
  }

  @override
  String toString() {
    return '''
users: ${users},
user: ${user},
isLoading: ${isLoading},
errorMessage: ${errorMessage}
    ''';
  }
}
