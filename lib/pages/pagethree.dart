import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:safeclick1/login_and_signup/landing_page.dart';

class pagethree extends StatelessWidget {
  const pagethree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 70, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Try our safeshake and \n safeclick",
                  // style: Color.fromRGBO(7, 11, 116, 1),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Image(
                  image: AssetImage("assets/women-security.png"),
                  width: 50,
                  height: 50,
                )
              ],
            ),
          ),
          SizedBox(
            width: 400,
            height: 400,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
              child: Image(
                //fit: BoxFit.,
                image: AssetImage(
                  "assets/image7.png",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
            child: Text(
              "Tired of fake ID's Fear of being bullied..\n Now it's time to trust us",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(154, 153, 153, 0.992),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 50, 6, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Color.fromRGBO(252, 251, 251, 1),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => landing_page()),
                    );
                  },
                  child: Text(
                    'Skip',
                    style:
                        TextStyle(color: Color.fromRGBO(136, 136, 136, 0.796)),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(236, 6, 6, 0.71),
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => landing_page()),
                    );
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
