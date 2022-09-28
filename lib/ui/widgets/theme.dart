import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';
ThemeData theme(){
  return ThemeData(
    appBarTheme: AppBarTheme(
      color: kBackgroundColor,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle:TextStyle(color: Colors.black,fontSize: 20),
    )
  );
}