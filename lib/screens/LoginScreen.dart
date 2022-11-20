import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login001/AUTH/auth.dart';
import 'package:login001/screens/constans.dart';
import 'package:login001/screens/signup.dart';

import '../customWidget/component.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  late String email, password;
final auth=Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
      ),
      backgroundColor: Color.fromRGBO(0, 155, 255, 1.0),
      body: Form(
        key: globalKey,
        child: ListView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          customTextField(
                            onClick: (value) {
                              email= value;
                            },
                            massage: "please enter your Email",
                            pass: false,
                            type: TextInputType.emailAddress,
                            hint: 'Email',
                            icon: Icons.email,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          customTextField(
                            onClick: (value) {
                              password = value;
                            },
                            massage: "please enter your password",
                            pass: true,
                            type: TextInputType.number,
                            hint: 'Password',
                            icon: Icons.lock,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 90.0),
                            child: Container(
                              child: Container(
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        elevation: MaterialStatePropertyAll(12),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color.fromRGBO(20, 0, 0, 0.5)),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ))),
                                    onPressed: ()async {
                                      if (globalKey.currentState!.validate()) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content: Text('Processing Data')),
                                        );
                                        globalKey.currentState?.save();
                                        print("${email}");
                                        print("${password}");
                                       final authResult=await auth.sginIN(email, password);
                                       print(authResult.user.uid);
                                      }
                                    },
                                    child: Text(
                                      "       Sign in        ",
                                      style: TextStyle(color: Colors.grey[50]),
                                    )),
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: Container(
                                    color: Colors.black,
                                  ),
                                  height: .5,
                                ),
                                Text("OR"),
                                SizedBox(
                                  width: 70,
                                  child: Container(
                                    color: Colors.black,
                                  ),
                                  height: .5,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 80.0),
                            child: Container(
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      elevation: MaterialStatePropertyAll(12),
                                      backgroundColor: MaterialStatePropertyAll(
                                          Color.fromRGBO(20, 0, 0, .5)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ))),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/second');
                                  },
                                  child: Text(
                                    "       Sign up        ",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
