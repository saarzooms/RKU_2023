import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is test'),
        actions: [
          Icon(Icons.person),
        ],
        leading: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Text('hello'.tr),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale('en'));
                },
                child: Text('English'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale('fr'));
                },
                child: Text('French'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale('ar'));
                },
                child: Text('Arabic'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
