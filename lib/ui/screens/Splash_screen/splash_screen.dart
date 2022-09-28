import 'dart:async';
import 'package:e_commerce_app/ui/screens/drawer/home_screen.dart';
import 'package:e_commerce_app/ui/screens/login_screen/login_screen.dart';
import 'package:e_commerce_app/ui/screens/product/product_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
static String routName="/SplashScreen";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
   final user = auth.currentUser;
   if(user!=null){
     Timer(Duration(seconds: 3), () {
       Navigator.pushNamed(context, HomeScreen.routName);
     });
   }
   else{
     Timer(Duration(seconds: 3), () {
       Navigator.pushNamed(context, LoginScreen.routName);
     });
   }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //Spacer(),
          Image.asset('assets/images/splashscreen.jpg'),
          //Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "From AiK's",
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset('assets/images/developer_logo.png', height: 60,)
            ],
          ),
          // Spacer(),
        ],
      ),
    );
  }
}