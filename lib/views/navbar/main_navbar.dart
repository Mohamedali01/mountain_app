import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountain_app/views/navbar/bar_screen.dart';
import 'package:mountain_app/views/navbar/home_screen.dart';
import 'package:mountain_app/views/navbar/my_screen.dart';
import 'package:mountain_app/views/navbar/search_screen.dart';

import '../../controller/main_controller.dart';

class MainScreen extends StatelessWidget {
  List pages = [
    HomeScreen(),
    const BarScreen(),
    const SearchScreen(),
    const MyScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: pages[controller.currentIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.apps,
                    size: 30,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_sharp, size: 30), label: 'Bar'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, size: 30), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 30), label: 'My'),
            ],
            selectedItemColor: Colors.black54,
            onTap: (index) {
              controller.onTap(index);
            },
            unselectedItemColor: Colors.grey.shade300,
            elevation: 0,
            backgroundColor: Colors.white,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.currentIndex,
          ),
        );
      },
    );
  }
}
//