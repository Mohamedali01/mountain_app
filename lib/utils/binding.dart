import 'package:get/get.dart';
import 'package:mountain_app/controller/main_controller.dart';

class MyBindings implements Bindings{
  @override
  void dependencies() {
    Get.put(MainController());
  }
}