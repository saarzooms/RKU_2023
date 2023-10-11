import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/counter_controller.dart';
import 'screen_secoond.dart';

class ScreenFirst extends StatelessWidget {
  ScreenFirst({super.key});
  CounterController controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
        ),
        body: Center(
            child: Column(
          children: [
            Obx(
                // init: CounterController(),
                () {
              return Text('First Screen ${controller.count}');
            }),
            ElevatedButton(
                onPressed: () {
                  Get.offAll(ScreenSecond());
                },
                child: Text('next_btn'.tr)),
            ElevatedButton(
                onPressed: () {
                  // Get.back();
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text('This is test'),
                  //   ),
                  // );
                  Get.showSnackbar(
                    GetSnackBar(
                      title: 'This is title',
                      message: 'Hi there!!!',
                    ),
                  );
                },
                child: Text('prev_btn'.tr)),
          ],
        )));
  }
}
