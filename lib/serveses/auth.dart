import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class User {
  final String uid;

  User({required this.uid});
}

class AuthBase {
  User  _userFromFirebase(FirebaseUser user){
    return User(uid: user.uid);
  }
  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    final authResult = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return  _userFromFirebase(authResult.user);
  }
}
