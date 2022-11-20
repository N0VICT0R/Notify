import 'package:flutter/material.dart';
import 'package:login001/all%20screen/widges/auth_form.dart';
import 'package:login001/all%20screen/widges/bottom.dart';

import '../AUTH/auth.dart';

enum AuthType { login, register }

class AuthScreen extends StatefulWidget {
  final AuthType authType;

  const AuthScreen({super.key, required this.authType});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .5,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(22, 45, 58, 1.0),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 90.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Hello!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        'images/icons/notification.png',
                        height: 150,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          AuthForm(
            authType: widget.authType,
          ),

          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              if(widget.authType == AuthType.login){
                Navigator.of(context).pushReplacementNamed('Register');
              }else{
                Navigator.of(context).pushReplacementNamed('Login');

              }
            },
            child: Text(
              widget.authType == AuthType.login
                  ? "don\'t have an account ?"
                  : "do you have an account",
              style: TextStyle(color: Colors.black54, fontSize: 17),
            ),
          ),
        ],
      ),
    ));
  }
}
