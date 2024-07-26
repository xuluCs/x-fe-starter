import 'package:fe_starter_project_templete/core/screen_util/screen_util.dart';
import 'package:fe_starter_project_templete/features/home/models/user/user.dart';
import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.todo});

  final User todo;

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyScreen().screenGapSize(width: 12),
                Flexible(
                  child: Text(
                    todo.fullName ?? "",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: MyScreen().textStyleTitle(context),
                  ),
                ),
              ],
            ),
          ),
          MyScreen().screenGapSize(width: 12),
          Text(
            todo.address ?? "",
            style: MyScreen().textStyleLabel(context),
          )
        ],
      ),
    );
  }
}
