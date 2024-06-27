import 'package:get_it/get_it.dart';
import 'package:fe_starter_project_templete/core/services/restful/api_service.dart';
import 'package:fe_starter_project_templete/features/auth/repositories/auth_repository.dart';
import 'package:fe_starter_project_templete/features/auth/repositories/auth_repository_impl.dart';
import 'package:fe_starter_project_templete/features/auth/stores/auth_store.dart';
import 'package:fe_starter_project_templete/features/todo/repositories/todo_repository.dart';
import 'package:fe_starter_project_templete/features/todo/repositories/todo_repository_impl.dart';
import 'package:fe_starter_project_templete/features/todo/stores/todo_store.dart';

final sl = GetIt.instance;

Future setupSl() async {
  //external
  sl.registerLazySingleton<ApiService>(() => ApiService());
  
  //repository
  sl.registerLazySingleton<TodoRepository>(() => TodoRepositoryImpl());
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());

  //store
  sl.registerSingleton<TodoStore>(TodoStore());
  sl.registerSingleton<AuthStore>(AuthStore());
}