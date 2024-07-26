import 'package:fe_starter_project_templete/core/screen_util/screen_util.dart';
import 'package:fe_starter_project_templete/core/screen_util/screen_util_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:fe_starter_project_templete/core/services/local_preference_service.dart';
import 'package:fe_starter_project_templete/features/home/stores/todo_store.dart';
import 'package:fe_starter_project_templete/features/home/views/widget/todo_item.dart';
import 'package:fe_starter_project_templete/core/config/injection.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final store = sl<TodoStore>();

  @override
  void initState() {
    super.initState();
    store.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(
          "My Templete Starter",
          style: MyScreen().textStyleTitle(context).copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.line_horizontal_3),
        ),
        actions: [
          IconButton(
            onPressed: () {
              LocalPreferenceService.removeCredential();
              context.go('/');
            },
            icon: const Icon(
              CupertinoIcons.bell_fill,
            ),
          )
        ],
      ),
      body: Observer(
        builder: (context) {
          if (store.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (store.errorMessage.isNotEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(store.errorMessage),
                  TextButton(
                      onPressed: () {
                        store.getUsers();
                      },
                      child: Text(
                        "try again",
                        style: MyScreen().textStyleLabel(context),
                      ))
                ],
              ),
            );
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyScreen().screenGapSize(height: 16.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: RichText(
                    text: TextSpan(
                      text: "Remaining task ",
                      children: [
                        TextSpan(
                          text: '(${store.users.length})',
                        ),
                      ],
                      style: MyScreen()
                          .textStyleTitle(context)
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: store.users.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 12,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () async {
                        context.push('/detail_user',
                            extra: {'idUser': store.users[index].userId});
                      },
                      child: TodoItem(todo: store.users[index]),
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade600,
        onPressed: () async {
          final result = await context.push("/add_todo");
          if (result == true) {
            // // ignore: use_build_context_synchronously
            // context.read<TodoBloc>().add(OnGetTodoList());
          }
        },
        child: const Icon(
          Icons.add_rounded,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
