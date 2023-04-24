import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:safeclick1/components/custom_carousel.dart';
import 'package:safeclick1/home_widgets/emergency.dart';

import '../home_widgets/SafeHome/safehome.dart';
import '../home_widgets/livelocations.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 210, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.settings),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(242, 144, 167, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.person),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(242, 144, 167, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                    child: Text(
                      "Explore Livelocations",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  livelocations(),
                  safeHome(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
