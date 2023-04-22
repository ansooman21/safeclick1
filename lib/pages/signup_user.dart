import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/custom_textfield.dart';

class signup_user extends StatefulWidget {
  @override
  State<signup_user> createState() => _signup_userState();
}

class _signup_userState extends State<signup_user> {
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
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(70, 20, 0, 0),
                  child: Text(
                    "USER SIGNUP",
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => signup_user(),
                            ));
                      },
                      child: Text(
                        "Register New User",
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
