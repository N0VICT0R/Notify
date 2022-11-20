// import 'package:flutter/material.dart';
// import 'package:login001/screens/LoginScreen.dart';
//
// import '../customWidget/component.dart';
//
// class Signup extends StatelessWidget {
//   final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black45,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios_rounded),
//           tooltip: '',
//           onPressed: () {
//             Navigator.pushNamed( context,'/');
//
//           },
//         ),
//       ),
//       backgroundColor: Color.fromRGBO(0, 155, 255, 1.0),
//       body: Form(
//         key: globalKey,
//         child: ListView(
//           children: [
//
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 50),
//               child: Stack(
//                 alignment: Alignment.topCenter,
//                 children: [
//                   // Image(
//                   //   image: AssetImage('images/icons/school.png'),
//                   //   height: 100,
//                   //   width: 150,
//                   // ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 80),
//                     child: Column(
//                       children: [
//
//                         customTextField(
//                           onClick: (value){
//                             email=value;
//                           },
//                           massage: "please enter your name",
//
//                           pass: true,
//                           type: TextInputType.number,
//                           hint: 'Name',
//                           icon: Icons.perm_identity,
//                         ),
//                         SizedBox(
//                           height: 30,
//                         ),
//                         customTextField(
//                           onClick: (value){
//                             email=value;
//                           },
//                           massage: "please enter your Email",
//
//                           pass: false,
//                           type: TextInputType.emailAddress,
//                           hint: 'Email',
//                           icon: Icons.email,
//                         ),
//                         SizedBox(
//                           height: 30,
//                         ),
//                         customTextField(
//                           onClick: (value){
//                             email=value;
//                           },
//                           massage: "please enter your password ",
//
//                           pass: true,
//                           type: TextInputType.number,
//                           hint: ' Password',
//                           icon: Icons.lock,
//                         ),
//                         SizedBox(
//                           height: 30,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 90.0),
//                           child: Container(
//                             child: Container(
//                               child: ElevatedButton(
//                                   style: ButtonStyle(
//                                       elevation: MaterialStatePropertyAll(12),
//                                       backgroundColor: MaterialStatePropertyAll(
//                                           Color.fromRGBO(20, 0, 0, 0.5)),
//                                       shape: MaterialStateProperty.all<
//                                               RoundedRectangleBorder>(
//                                           RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(15.0),
//                                       ))),
//                                   onPressed: () {
//                                     if (globalKey.currentState!.validate()) {
//                                       ScaffoldMessenger.of(context)
//                                           .showSnackBar(
//                                         const SnackBar(
//                                             content: Text('Processing Data')),
//                                       );
//                                     }
//                                   },
//                                   child: Text(
//                                     "       Sign up        ",
//                                     style: TextStyle(color: Colors.grey[50]),
//                                   )),
//                             ),
//                           ),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
