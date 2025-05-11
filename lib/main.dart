import 'package:catalift_app/pages/cart_page.dart';
import 'package:catalift_app/pages/course_page.dart';
import 'package:catalift_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/course_page': (context) => CoursePage(),
        '/cart_page': (context) => CartPage(),
      },
    );
  }
}
