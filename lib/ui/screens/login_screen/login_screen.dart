import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_commerce_app/ui/screens/login_screen/form_field.dart';
bool haveAccount = true;
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routName = "/login_Screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(haveAccount ? 'SignIn' : 'SignUp'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                Text(
                  haveAccount ? 'SIGN IN' : 'SIGN UP',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  haveAccount
                      ? 'Sign in with email and password'
                      : 'Sign Up with email and password',
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 0.1.sh,
                ),
                if (haveAccount == false) BuildNameFormField(),
                if (haveAccount == false) SizedBox(height: 0.03.sh),
                LoginFormFeild(),


                if (haveAccount == true)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                    child: RawMaterialButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text('Sign In With?'),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.transparent,
                            ),
                            child: Image.asset(
                              'assets/images/google.png',
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                if (haveAccount == false)
                  SizedBox(
                    height: 0.04.sh,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(haveAccount
                        ? "Don't have an account "
                        : "Already have an account Back to "),
                    GestureDetector(
                        onTap: () => setState(() {
                              haveAccount = !haveAccount;
                            }),
                        child: Text(haveAccount ? 'Sign Up?' : 'Sign In?',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
