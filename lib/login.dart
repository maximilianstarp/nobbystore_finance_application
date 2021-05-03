// Imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nobbystore_finance/User/user_main.dart';
import 'package:nobbystore_finance/Administration/admin_main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Logik
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  String status;

  void Invalid() {
    showDialog(
      context: context,
      builder: (BuildContext context) => _buildPopupDialog(context),
    );
    emailController.text = "";
    passwordController.text = "";
  }

  void Valid() {
    if (status == "Admin") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AdminMain()),
      );
    } else if (status == "User") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UserMain()),
      );
    }
    emailController.text = "";
    passwordController.text = "";
  }

  void Checker() {}

  // Graphical User Interface
  var i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.0, -1.0),
                end: Alignment(-1.0, 1.0),
                colors: [
                  const Color(0xcc7f43d9),
                  const Color(0xcce61d88),
                  const Color(0xccffaa01)
                ],
                stops: [0.0, 0.506, 1.0],
              ),
            ),
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:MediaQuery.of(context).size.width * 0.8,
                          height:MediaQuery.of(context).size.height * 0.01,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: (MediaQuery.of(context).size.height * 0.1)
                          ),
                        ),
                      ]
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:MediaQuery.of(context).size.width * 0.8,
                          height:MediaQuery.of(context).size.height * 0.1,
                        )
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                labelText: "Email",
                                labelStyle: TextStyle(fontSize: 20),
                                filled: true,
                              ),
                            ),
                          ),
                        ]
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:MediaQuery.of(context).size.width * 0.8,
                          height:MediaQuery.of(context).size.height * 0.01,
                        )
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(fontSize: 20),
                                filled: true,
                              ),
                            ),
                          ),
                        ]
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:MediaQuery.of(context).size.width * 0.8,
                          height:MediaQuery.of(context).size.height * 0.04,
                        )
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: ButtonTheme(
                              height: 50,
                              disabledColor: Colors.greenAccent,
                              child: ElevatedButton(
                                onPressed: () {
                                  status = "User";
                                  Valid();
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:MediaQuery.of(context).size.width * 0.8,
                          height:MediaQuery.of(context).size.height * 0.05,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Popup Dialog
Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Warning'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Wrong Password or Username. Please try Again!"),
      ],
    ),
    actions: <Widget>[
      new RaisedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}
