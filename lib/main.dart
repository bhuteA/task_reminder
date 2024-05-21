import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_tasks_with_alert/shared/network/cashhelper.dart';
import 'package:todo_tasks_with_alert/shared/styles/thems.dart';
import 'package:todo_tasks_with_alert/todo_layout.dart';
import 'package:todo_tasks_with_alert/todo_layoutcontroller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();
  Get.put(TodoLayoutController());
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  TodoLayoutController todoController = Get.find<TodoLayoutController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => GetMaterialApp(
        builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            child: child!),
        debugShowCheckedModeBanner: false,
        theme: lightTheme(),
        darkTheme: darkThem(),
        themeMode:
        todoController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
        home: TodoLayout(),
      ),
    );
  }
}