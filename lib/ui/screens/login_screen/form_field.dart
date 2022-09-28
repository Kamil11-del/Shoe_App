
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/repository/auth/auth_functions.dart';
import 'package:e_commerce_app/ui/screens/login_screen/login_screen.dart';
import 'package:e_commerce_app/ui/screens/product/product_screen.dart';
import 'package:e_commerce_app/ui/widgets/default_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginFormFeild extends StatefulWidget {
   LoginFormFeild({
    Key? key,
  }) : super(key: key);
  @override
  State<LoginFormFeild> createState() => _LoginFormFeildState();
}

class _LoginFormFeildState extends State<LoginFormFeild> {
  String email='';
  String password='';
 final formKey=GlobalKey<FormState>();
 bool isObsecure=true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
          child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: 0.03.sh),
          buildPassFormField(),
          SizedBox(
            height: 0.09.sh,
          ),
          DefaultButton(
            text: haveAccount ? 'Sign In' : 'Sign Up',
            press: () {
             haveAccount
                  ? signIn(email, password,
                  context)
                  :signUp(email,password,context,BuildNameFormField.userName);
            },
          ),
        ],
      )
    );
  }

  Container buildEmailFormField() {
    return Container(
      width: 0.9.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: TextFormField(
        onChanged: (value){
          setState(() {
            email=value;
          });
        },
        keyboardType: TextInputType.emailAddress,
        cursorColor: kPurpleColor,
        decoration: InputDecoration(
          hintText: 'Enter Your email',
          labelText: 'Enter Your Email',
          labelStyle: TextStyle(color: kPurpleColor),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey)),
          contentPadding: EdgeInsets.symmetric(horizontal: 40,vertical: 18),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color:Colors.grey),
          ),
        ),
      ),
    );
  }

  Container buildPassFormField() {
    return Container(
      width: 0.9.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: TextFormField(
        onChanged: (value){
        setState(() {
          password=value;
        });
        },
        obscureText: isObsecure,
        cursorColor: kPurpleColor,
        decoration: InputDecoration(
          hintText: 'Enter Your Password',
          labelText: 'Enter Your password',
          labelStyle: TextStyle(color: kPurpleColor),
          suffixIcon: IconButton(onPressed: (){setState(() {
            isObsecure=! isObsecure;
          });},icon: Icon(isObsecure? Icons.visibility_off_outlined:Icons.visibility_outlined,color: isObsecure?Colors.grey:Colors.blue,),),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey)),
          contentPadding: EdgeInsets.symmetric(horizontal: 40,vertical: 18),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color:Colors.grey),
          ),
        ),
      ),
    );
  }
}


class BuildNameFormField extends StatelessWidget {
  const BuildNameFormField({Key? key}) : super(key: key);
static String userName='';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: TextFormField(
        onChanged: (value){
          userName=value;
        },
        cursorColor: kPurpleColor,
        decoration: InputDecoration(
          hintText: 'Enter Your Name',
          labelText: 'Enter Your Name',
          labelStyle: TextStyle(color: kPurpleColor),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey)),
          contentPadding: EdgeInsets.symmetric(horizontal: 40,vertical: 18),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color:Colors.grey),
          ),
        ),
      ),
    );
  }
}
