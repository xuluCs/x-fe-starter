
import 'package:fe_starter_project_templete/features/todo/models/todo.dart';

abstract class TodoRepository {
  Future<List<Todo>> fetchTodos();
}