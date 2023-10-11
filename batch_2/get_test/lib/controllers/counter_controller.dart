import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  // var count = 0;
  increase() {
    count++;
    // update();
  }

  decrease() {
    count--;
  }

  reset() {
    // count.value = 0;
  }
}
