import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:safeclick1/components/custom_carousel.dart';
import 'package:safeclick1/home_widgets/emergency.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            //   child: Text(
            //     "Emergency",
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ).
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      "Emergency",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  emergency(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
