import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:safeclick1/pages/startpage.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            this.context,
            MaterialPageRoute(
              builder: (context) => startpage(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(80, 200, 0, 0),
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/safeclick_logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 100, 0, 0),
                child: Text(
                  "Safeclick",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
