import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palugada/pages/detail_page.dart';
import 'package:palugada/pages/home_page.dart';
import 'package:palugada/pages/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Palugada',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DetailPage(),
    );
  }
}


