import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:safeclick1/components/custom_textfield.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "USER LOGIN",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image(
                width: 200,
                height: 144,
                image: AssetImage("assets/image6.jpg"),
              ),
              custom_textfield(
                hintText: 'enter name',
                prefix: Icon(Icons.person),
              ),
              custom_textfield(
                hintText: 'enter name',
                prefix: Icon(Icons.person),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(242, 144, 167, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "click here",
                          style: TextStyle(
                              color: Color.fromRGBO(242, 144, 167, 1)),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register New User",
                      style: TextStyle(color: Color.fromRGBO(242, 144, 167, 1)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
