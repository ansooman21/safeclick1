import 'package:flutter/material.dart';
import 'package:safeclick1/pages/bottom_screen/bottom_page.dart';
import 'package:safeclick1/pages/splash_screen.dart';
import 'package:safeclick1/pages/startpage.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: startpage(),
    );
  }
}
