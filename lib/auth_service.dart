import 'package:firebaseWeb/home_screen.dart';
import 'package:firebaseWeb/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {


  //Handle Authentication
  handleAuth(){
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, snapshot){
        if (snapshot.hasData) {
          return HomePage();
        }
        else {
          return LoginPage();
        }
      },

    );
  }

  //Sign Out
  signOut() {
    FirebaseAuth.instance.signOut();
  }

  //Sign In
  signIn(email, password){
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((user){
      print('Signed In');
    }).catchError((e){
      print(e);
    });
  }



}