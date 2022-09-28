import 'package:e_commerce_app/ui/screens/drawer/home_screen.dart';
import 'package:e_commerce_app/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

bool loading= false;
signUp(
    String email, String password, BuildContext context, String name)async {
  loading=true;
  print(email);
  showDialog(context: context, builder: (context)=>Center(child: CircularProgressIndicator(),));
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email:email, password: password);
    loading=false;
    Navigator.pushNamed(context, HomeScreen.routName);
  }
  on FirebaseAuthException catch (e) {
    loading=false;
    if(e.code == 'weak-password'){
      Utils.flushBarErrorMessage(context: context,message: 'Weak Password');
    }
    else if (e.code == 'email-already-in-use'){
      loading=false;
      Utils.flushBarErrorMessage(context: context,message: 'Email already in use');
    }
  }
  catch (e){
    loading=false;
    print(e);
  }
}
signIn(String email, String password,BuildContext context)async {
  loading=true;
  showDialog(context: context, builder: (context)=>Center(child: CircularProgressIndicator(),));
  try {

    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email:email, password: password);
    loading=false;
    Navigator.pushNamed(context, HomeScreen.routName);
  }on FirebaseAuthException catch (e) {
    loading=false;
    if(e.code == 'user-not-found'){
      Utils.flushBarErrorMessage(context: context,message: 'No user Found');

    }
    else if (e.code == 'wrong-password'){
      loading=false;
      Utils.flushBarErrorMessage(context: context,message: 'Wrong Password');

    }
  }
  catch (e){
    loading=false;
    print(e);
  }
}