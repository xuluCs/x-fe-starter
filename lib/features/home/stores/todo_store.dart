import 'package:mobx/mobx.dart';
import 'package:fe_starter_project_templete/features/home/models/todo.dart';
import 'package:fe_starter_project_templete/features/home/repositories/todo_repository.dart';
import 'package:fe_starter_project_templete/core/config/injection.dart';

part 'todo_store.g.dart';

class TodoStore = _TodoStore with _$TodoStore;

abstract class _TodoStore with Store {
  final TodoRepository _repository = sl<TodoRepository>();

  @observable
  ObservableList<Todo> todos = ObservableList<Todo>();

  @observable
  bool isLoading = false;

  @observable
  String errorMessage = '';

  @action
  Future<void> fetchPosts() async {
    isLoading = true;
    errorMessage = '';
    try {
      final fetchedPosts = await _repository.fetchTodos();
      todos = ObservableList.of(fetchedPosts);
    }  catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
    }
  }

}