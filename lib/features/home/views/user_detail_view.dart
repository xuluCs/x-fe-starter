import 'package:fe_starter_project_templete/core/config/injection.dart';
import 'package:fe_starter_project_templete/features/home/stores/todo_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DetailUserView extends StatelessWidget {
  const DetailUserView({super.key, required this.idUser});

  final int idUser;

  @override
  Widget build(BuildContext context) {
    final store = sl<TodoStore>();
    store.getUserById(idUser.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail User"),
      ),
      body: Observer(
        builder: (context) => SingleChildScrollView(
          child: Column(
            children: [
              Text(store.user.fullName ?? ""),
              Text(store.user.email ?? ""),
            ],
          ),
        ),
      ),
    );
  }
}
