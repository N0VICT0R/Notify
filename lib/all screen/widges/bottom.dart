import 'package:flutter/material.dart';
class Bottom extends StatelessWidget {

final String text;
final VoidCallback function;

  const Bottom({super.key, required this.text, required this.function});


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(

              elevation: MaterialStatePropertyAll(25),
              backgroundColor: MaterialStatePropertyAll(
                  Color.fromRGBO(0, 0, 0, 0.2)),
              shape:
              MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ))),
          onPressed: function,
          child: Text(
            text,
            style: TextStyle(fontSize: 25),
          )),
    );
  }
}
