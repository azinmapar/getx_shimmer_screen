import 'package:get/get.dart';

class ShimmerController extends GetxController {
  var isLoading = true.obs;
  void toggle() {
    isLoading.value = !isLoading.value;
  }
}
