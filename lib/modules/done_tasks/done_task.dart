import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/components/components.dart';
import '../../todo_layoutcontroller.dart';

class DoneTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TodoLayoutController>(
      init: Get.find<TodoLayoutController>(),
      builder: (todoController) => tasksBuilder(
          tasks: todoController.donetaskMap, message: "No Finished tasks"),
    );
  }
}