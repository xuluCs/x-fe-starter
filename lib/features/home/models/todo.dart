import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart';

@JsonSerializable()
class Todo {
  String? id;
  String? title;
  String? body;
  String? category;
  String? createdAt;

  Todo({this.id, this.title, this.body, this.category, this.createdAt});

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
