import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final String hint;
  final String massage;
  final IconData icon;
  final TextInputType type;
  final bool pass;
  final Function onClick;
  customTextField({required this.icon,required this.hint,required this.type,required this.pass, required this.massage,required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(

        validator: (value) {
          if (value == null || value.isEmpty) {
            return massage;
          }
          return null;
        },
        // onSaved: onClick(value),
        obscureText: pass,
        cursorColor: Colors.black,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(


          hintText: hint,
          prefixIcon: Icon(icon,color:Colors.black ,),
          filled: true,
          fillColor: Color.fromRGBO(0, 0, 0, .2),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                  color: Color.fromRGBO(0, 0, 0, 0)
              )
          ),
          focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Color.fromRGBO(0, 0, 0, 0.3)
              )
          ),
          border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Color.fromRGBO(0, 0, 0, 0.3)
              )
          ),
        ),

      ),
    );
  }
}