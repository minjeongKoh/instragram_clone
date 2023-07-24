import 'package:get/get.dart';
import 'package:instragram_clone/src/controller/bottom_nav_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BottomNAvController());
  }
}
