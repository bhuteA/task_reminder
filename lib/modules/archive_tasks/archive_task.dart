import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/components/components.dart';
import '../../todo_layoutcontroller.dart';

class ArchiveTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TodoLayoutController>(
      init: Get.find<TodoLayoutController>(),
      builder: (todoController) => tasksBuilder(
          tasks: todoController.archivetaskMap, message: "No Archived Tasks "),
    );
  }
}