import 'package:get/get.dart';
import 'package:getx_shimmer_screen/controllers/navigation_bar_controller.dart';
import 'package:getx_shimmer_screen/controllers/shimmer_contoller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationBarController());
    Get.lazyPut(() => ShimmerController());
  }
}
