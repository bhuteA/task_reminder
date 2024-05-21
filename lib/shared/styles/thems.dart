import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_tasks_with_alert/shared/styles/colors.dart';

ThemeData darkThem() => ThemeData(
  scaffoldBackgroundColor: Colors.black,
  primarySwatch: defaultColor,
  appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.black,
      elevation: 0,
      actionsIconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
      )),
  floatingActionButtonTheme:
  FloatingActionButtonThemeData(backgroundColor: defaultColor),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white),

  //NOTE : set default bodytext1
  textTheme: TextTheme(
    bodyText1: TextStyle(
        color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
    subtitle1: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    bodyText2: TextStyle(
      color: Colors.white,
    ),
    headline5: TextStyle(color: defaultColor, fontWeight: FontWeight.bold),
  ),
);

ThemeData lightTheme() => ThemeData(
  primarySwatch: defaultColor,
  appBarTheme:  AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0,
      actionsIconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      )),
  floatingActionButtonTheme:
  FloatingActionButtonThemeData(backgroundColor: defaultColor),

  //NOTE : set default bodytext1
  textTheme: TextTheme(
      bodyText1: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(
        color: Colors.black,
      ),
      subtitle1:
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      headline5:
      TextStyle(color: defaultColor, fontWeight: FontWeight.bold)),
);
