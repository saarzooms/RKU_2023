import 'package:flutter/material.dart';

import 'calc_screen.dart';
import 'col_row_test.dart';
import 'counter_page.dart';
import 'home_page.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CalcScreen());
  }
}
