import 'package:flutter/material.dart';
import 'package:login001/all%20screen/widges/bottom.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(22, 45, 58, 1.0),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Image.asset('images/icons/notification.png'),
             Bottom(
               function: (){
                 Navigator.of(context).pushNamed('Login');
               }
               ,
               text:'Get Started ' ,
             ),
            ],
          ),
        ),
      ),
    );
  }
}
