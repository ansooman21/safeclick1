import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:safeclick1/login_and_signup/login_page.dart';
import 'package:safeclick1/pages/homepage.dart';
import 'package:safeclick1/police_interface/police_home_page.dart';

import '../components/custom_textfield.dart';

class Signup_police extends StatefulWidget {
  @override
  State<Signup_police> createState() => Signup_policeState();
}

class Signup_policeState extends State<Signup_police> {
  bool isPasswordshown = true;
  final _formKey = GlobalKey<FormState>();
  final _formdata = Map<String, Object>();
  _onsubmit() {
    _formKey.currentState!.save();
    print(_formdata['email']);
    print(_formdata['password']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      "POLICE SIGNUP",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(243, 102, 178, 1)),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: custom_textfield(
                            hintText: 'enter name',
                            textInputAction: TextInputAction.next,
                            keyboardtype: TextInputType.name,
                            prefix: Icon(Icons.person),
                            onsave: (name) {
                              _formdata['name'] = name ?? "";
                            },
                            validate: (email) {
                              if (email!.isEmpty || email.length < 3) {
                                return 'enter correct name';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: custom_textfield(
                            hintText: 'enter phone number',
                            textInputAction: TextInputAction.next,
                            keyboardtype: TextInputType.phone,
                            prefix: Icon(Icons.phone),
                            onsave: (phone) {
                              _formdata['phone'] = phone ?? "";
                            },
                            validate: (email) {
                              if (email!.isEmpty || email.length < 10) {
                                return 'enter correct phone';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: custom_textfield(
                            hintText: 'enter email',
                            textInputAction: TextInputAction.next,
                            keyboardtype: TextInputType.emailAddress,
                            prefix: Icon(Icons.person),
                            onsave: (email) {
                              _formdata['email'] = email ?? "";
                            },
                            validate: (email) {
                              if (email!.isEmpty ||
                                  email.length < 3 ||
                                  !email.contains("@")) {
                                return 'enter correct email';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: custom_textfield(
                            hintText: 'enter guardian email',
                            textInputAction: TextInputAction.next,
                            keyboardtype: TextInputType.emailAddress,
                            prefix: Icon(Icons.person),
                            onsave: (gmail) {
                              _formdata['gmail'] = gmail ?? "";
                            },
                            validate: (email) {
                              if (email!.isEmpty ||
                                  email.length < 3 ||
                                  !email.contains("@")) {
                                return 'enter correct email';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: custom_textfield(
                            hintText: 'enter Password',
                            isPassword: isPasswordshown,
                            prefix: Icon(Icons.vpn_key_rounded),
                            onsave: (password) {
                              _formdata['password'] = password ?? "";
                            },
                            validate: (password) {
                              if (password!.isEmpty || password.length < 7) {
                                return 'enter correct password';
                              }
                              return null;
                            },
                            suffix: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPasswordshown = !isPasswordshown;
                                  });
                                },
                                icon: isPasswordshown
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: custom_textfield(
                            hintText: 'confirm Password',
                            isPassword: isPasswordshown,
                            prefix: Icon(Icons.vpn_key_rounded),
                            onsave: (password) {
                              _formdata['password'] = password ?? "";
                            },
                            validate: (password) {
                              if (password!.isEmpty || password.length < 7) {
                                return 'enter correct password';
                              }
                              return null;
                            },
                            suffix: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPasswordshown = !isPasswordshown;
                                  });
                                },
                                icon: isPasswordshown
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _onsubmit();
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Police_HomeScreen(),
                            ),
                          );
                        },
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
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => login_page(),
                        ),
                      );
                    },
                    child: Text(
                      "Login with your account",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
