import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:safeclick1/components/custom_textfield.dart';
import 'package:safeclick1/pages/signup_user.dart';

class police_login extends StatefulWidget {
  police_login({super.key});

  @override
  State<police_login> createState() => _police_loginState();
}

class _police_loginState extends State<police_login> {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Text(
                    "POLICE LOGIN",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(243, 102, 178, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Image(
                    width: 200,
                    height: 144,
                    image: AssetImage("assets/safeclick_logo.png"),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
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
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => signup_user(),
                          ),
                        );
                      },
                      child: Text(
                        "Register New POLICE",
                        style:
                            TextStyle(color: Color.fromRGBO(242, 144, 167, 1)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
