import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login001/all%20screen/authScreen.dart';

import 'bottom.dart';

class AuthForm extends StatefulWidget {
  final AuthType authType;

  const AuthForm({super.key, required this.authType});


  @override
  State<AuthForm> createState() => _AuthState();
}

class _AuthState extends State<AuthForm> {
  final _FormKey =GlobalKey<FormState>();
  String _email = " ",_password="";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key:_FormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value)=> _email=value,


                  validator: (value)=>value!.isEmpty?'email must be not Empty':null ,
                  decoration: InputDecoration(
                    label: Text("Enter your Email" ),
                    hintText: 'ex @gmail.com'

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onChanged: (value)=> _password=value,

                  validator: (value)=>value!.length<6?'password is too short':null ,

                  obscureText: true,
                  decoration: InputDecoration(

                      label: Text("Enter your password" ),


                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child:
                  Bottom(
                      text: widget.authType == AuthType.login ? 'Sgin in' : 'register',
                      function: () {
                        if(_FormKey.currentState!.validate()){
                          print(_email);
                          print(_password);
                        }
                      }),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
