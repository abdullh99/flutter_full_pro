import 'package:flutter/material.dart';
import 'package:login_design/layout/home_layout.dart';
// import 'package:login_design/bmi_result_screen.dart';
//import 'package:login_design/modules/bmi/bmi_screen.dart';
//import 'package:login_design/login_screen.dart';
// import 'package:login_design/massenger_screen.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  sqfliteFfiInit();
  // databaseFactory = databaseFactoryFfi;
  databaseFactory = databaseFactoryFfi;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
