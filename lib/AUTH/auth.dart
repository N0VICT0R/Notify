import 'package:firebase_auth/firebase_auth.dart';
class Auth {
final _auth=FirebaseAuth.instance;
     Future sginUp(String email,String password) async
     {
      final authResult= await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return authResult;
    }
    Future sginIN(String email,String password) async
     {
      final authResult= await _auth.signInWithEmailAndPassword(email: email, password: password);
      return authResult;
    }
}








