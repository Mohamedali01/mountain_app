import 'package:flutter/material.dart';
import 'package:mountain_app/utils/binding.dart';
import 'package:mountain_app/views/navbar/main_navbar.dart';
import 'package:mountain_app/views/welcome_screen.dart';
import 'package:get/get.dart';

void main() {
  MyBindings().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
