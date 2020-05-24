import 'dart:convert';

import 'package:MoneRekho/model/todo_item_model.dart';

class Utility {
  static List<TodoItemModel> parseTodoItemListJSON(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<TodoItemModel>((json) => TodoItemModel.fromJson(json))
        .toList();
  }
}
