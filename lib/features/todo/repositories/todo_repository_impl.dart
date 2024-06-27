
import 'package:flutter/material.dart';
import 'package:fe_starter_project_templete/core/services/restful/api_service.dart';
import 'package:fe_starter_project_templete/features/todo/models/todo.dart';
import 'package:fe_starter_project_templete/features/todo/repositories/todo_repository.dart';
import 'package:fe_starter_project_templete/injection.dart';

class TodoRepositoryImpl implements TodoRepository {
  final _service = sl<ApiService>();

  @override
  Future<List<Todo>> fetchTodos() async {
    try {
      final result = await _service.getData('/todos');
      debugPrint("dddd222 ${result['data']}");
      final data = result['data'] as List;
      return data.map((e) => Todo.fromJson(e),).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
