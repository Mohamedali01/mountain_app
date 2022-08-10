import 'package:get/get.dart';

class MainController extends GetxController {
  int currentIndex = 0;

  void onTap(int index) {
    currentIndex = index;
    print(currentIndex);
    update();
  }
}
