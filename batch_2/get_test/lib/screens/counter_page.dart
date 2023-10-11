import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';
import 'screen_first.dart';

class CounterPage extends StatelessWidget {
  CounterController controller = Get.put(CounterController());
  CounterPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page'),
      ),
      body: Column(
        children: [
          Text('Count : ${controller.count}'),
          GetX<CounterController>(
              // init: CounterController(),
              builder: (_) => Text('Count : ${_.count}')),
          ElevatedButton(
            onPressed: () {
              controller.increase();
              // Get.to(ScreenFirst());
            },
            child: Text('Click Me!!! ${controller.count}'),
          ),
          ElevatedButton(
            onPressed: () {
              // controller.increase();
              Get.to(ScreenFirst());
            },
            child: Text('next_btn'.tr),
          ),
        ],
      ),
    );
  }
}
