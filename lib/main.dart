

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login001/all%20screen/Login_Screen.dart';
import 'package:login001/screens/LoginScreen.dart';
import 'package:login001/screens/clss.dart';
import 'package:login001/screens/signup.dart';

import 'all screen/authScreen.dart';

Future main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      theme: ThemeData(

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color.fromARGB(20, 0, 20, 5),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
          disabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
     home:IntroScreen(),

      routes: {
       'Login':(context)=> AuthScreen(authType: AuthType.login,),
       'Register':(context)=> AuthScreen(authType: AuthType.register,),

      },

    ),
  );
}


