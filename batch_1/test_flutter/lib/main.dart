import 'package:flutter/material.dart';
import 'bmi_calc.dart';
import 'calc_page.dart';
import 'contact_list.dart';
import 'counter_page.dart';
import 'dashboard_page.dart';
import 'home_page.dart';
import 'contact_page.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: BMICalc(),
    );
  }
}
