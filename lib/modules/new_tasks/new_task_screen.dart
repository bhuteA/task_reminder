import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/components/components.dart';
import '../../todo_layoutcontroller.dart';

class NewTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TodoLayoutController>(
        init: Get.find<TodoLayoutController>(),
        builder: (todoController) => tasksBuilder(
            tasks: todoController.newtaskMap,
            message: "No Tasks yet, Add more Tasks"));
  }
}