import 'package:fe_starter_project_templete/core/extensions/logger.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_handler.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_request.dart';
import 'package:fe_starter_project_templete/core/utils/navigator.dart';
import 'package:fe_starter_project_templete/features/home/models/user/user.dart';
import 'package:fe_starter_project_templete/features/home/models/user/user_request.dart';
import 'package:mobx/mobx.dart';
import 'package:fe_starter_project_templete/features/home/repositories/todo_repository.dart';
import 'package:fe_starter_project_templete/core/config/injection.dart';

part 'todo_store.g.dart';

class TodoStore = _TodoStore with _$TodoStore;

abstract class _TodoStore with Store, NavigatorMixin {
  final TodoRepository _repository = sl<TodoRepository>();
  final _service = sl<RestfulHandler>();

  @observable
  ObservableList<User> users = ObservableList<User>();

  @observable
  User user = User();

  @observable
  bool isLoading = false;

  @observable
  String errorMessage = '';

  @action
  Future<void> getUsers() async {
    isLoading = true;
    errorMessage = '';
    final result = await _service.handlingInterface(GetRequest(url: '/users'));
    result?.fold(
      (l) {
        errorMessage = l.message;
        isLoading = false;
      },
      (r) {
        "datak123 : ${r.data}".logger();
        var data = r.data['users'] as List;
        users = data
            .map(
              (e) => User.fromJson(e),
            )
            .toList()
            .asObservable();
        isLoading = false;
      },
    );
  }

  @action
  Future<void> getUserById(String id) async {
    isLoading = true;
    errorMessage = '';
    final result =
        await _service.handlingInterface(GetRequest(url: '/users/$id'));
    result?.fold(
      (l) {
        errorMessage = l.message;
        isLoading = false;
      },
      (r) {
        user = User.fromJson(r.data);
        isLoading = false;
      },
    );
  }

  @action
  Future<void> deleteUser(String id) async {
    isLoading = true;
    errorMessage = '';
    final result =
        await _service.handlingInterface(DeleteRequest(url: '/users/$id'));
    result?.fold(
      (l) {
        errorMessage = l.message;
        isLoading = false;
      },
      (r) {
        user = User.fromJson(r.data);
        isLoading = false;
      },
    );
  }

  @action
  Future<void> editUser(UserRequest user, String idUser) async {
    isLoading = true;
    errorMessage = '';
    final result = await _service
        .handlingInterface(PutRequest(url: '/users/$idUser', param: {
      "email": user.email,
      "password": user.password,
      "fullName": user.fullName,
      "address": user.address,
      "mobileNo": user.mobileNo,
      "birthDate": user.birthDate,
      "roleId": user.roleId,
    }));
    result?.fold(
      (l) {
        errorMessage = l.message;
        isLoading = false;
      },
      (r) {
       isLoading = false;
      },
    );
  }
}
