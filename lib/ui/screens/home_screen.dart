import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/core/controller/todo_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _controller = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: SafeArea(
          child: Obx(
        () => _controller.isLoading.value
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemCount: _controller.dodoList.length,
                itemBuilder: (context, index) {
                  var data =_controller.dodoList[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("User id : ${data.userId}"),
                          Text("Id : ${data.id}"),
                          Text("Title : ${data.title}"),
                          Text("completed : ${data.completed}"),
                        ],
                      ),
                    ),
                  );
                }),
      )),
    );
  }
}
