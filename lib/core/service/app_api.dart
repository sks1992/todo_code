import 'dart:convert';

import 'package:get/get.dart';
import 'package:untitled1/core/model/todo_model.dart';

class AppApi extends GetConnect {

  @override
  void onInit() {
    httpClient.baseUrl = "https://jsonplaceholder.typicode.com";
    httpClient.timeout = const Duration(minutes: 1);
    super.onInit();
  }

  Future<List<TodoModel>> getListOfTodo() async {
    var response = await get("/todos");
    if (response.hasError) {
      return [];
    } else {
      List<dynamic> parsedList = jsonDecode(response.bodyString!);
      var _list = parsedList.map((e) => TodoModel.fromJson(e)).toList();
      return _list;
    }
  }

}
