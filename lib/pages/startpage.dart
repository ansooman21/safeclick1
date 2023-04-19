import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:safeclick1/pages/pagetwo.dart';
import 'package:safeclick1/pages/login_signup_ui.dart';
// import 'package:';

class startpage extends StatelessWidget {
  const startpage({super.key});

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
                  "You are secure with \n SAFECLICK",
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
          Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Image(
              image: AssetImage("assets/image1.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 80, 0, 0),
            child: Text(
              "Don't worry when SAFECLICK is here..\n\t\t\t\t\t\t\t\t\t Safety at a click.",
              style: TextStyle(
                  fontSize: 18, color: Color.fromRGBO(154, 153, 153, 0.992)),
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
                      MaterialPageRoute(
                          builder: (context) => login_signup_ui()),
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
                      MaterialPageRoute(builder: (context) => pagetwo()),
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
