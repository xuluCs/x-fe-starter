import 'package:fe_starter_project_templete/core/screen_util/screen_util.dart';
import 'package:fe_starter_project_templete/core/services/restful/restful_handler.dart';
import 'package:fe_starter_project_templete/core/stores/language/language_store.dart';
import 'package:fe_starter_project_templete/core/stores/screen_util/screen_util_store.dart';
import 'package:fe_starter_project_templete/core/stores/theme/theme_store.dart';
import 'package:get_it/get_it.dart';
import 'package:fe_starter_project_templete/core/services/restful/api_service.dart';
import 'package:fe_starter_project_templete/features/auth/repositories/auth_repository.dart';
import 'package:fe_starter_project_templete/features/auth/repositories/auth_repository_impl.dart';
import 'package:fe_starter_project_templete/features/auth/stores/auth_store.dart';
import 'package:fe_starter_project_templete/features/home/repositories/todo_repository.dart';
import 'package:fe_starter_project_templete/features/home/repositories/todo_repository_impl.dart';
import 'package:fe_starter_project_templete/features/home/stores/todo_store.dart';

final sl = GetIt.instance;

Future setupSl() async {
  //external
  sl.registerLazySingleton<ApiService>(() => ApiService());
  sl.registerSingleton<ScreenUtilStore>(ScreenUtilStore());
  sl.registerSingleton<LanguageStore>(LanguageStore());
  sl.registerSingleton<ThemeStore>(ThemeStore());
  sl.registerSingleton<RestfulHandler>(RestfulHandler());

  //repository
  sl.registerLazySingleton<TodoRepository>(() => TodoRepositoryImpl());
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());

  //store
  sl.registerSingleton<TodoStore>(TodoStore());
  sl.registerSingleton<AuthStore>(AuthStore());

  //init

}
