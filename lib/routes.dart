
import 'package:e_commerce_app/ui/screens/Splash_screen/splash_screen.dart';
import 'package:e_commerce_app/ui/screens/cart_screen/cart_screen.dart';
import 'package:e_commerce_app/ui/screens/drawer/home_screen.dart';
import 'package:e_commerce_app/ui/screens/edit_profile/edit_page.dart';
import 'package:e_commerce_app/ui/screens/login_screen/login_screen.dart';
import 'package:e_commerce_app/ui/screens/product/product_screen.dart';
import 'package:e_commerce_app/ui/screens/product_details/product_detail_screen.dart';
import 'package:e_commerce_app/ui/screens/profile_screen/profile_screen.dart';
import 'package:e_commerce_app/ui/screens/tracker_screen/tracker_screen.dart';
import 'package:flutter/material.dart';
final Map<String,WidgetBuilder> routes={
  SplashScreen.routName:(context)=>SplashScreen(),
  LoginScreen.routName:(context)=>LoginScreen(),
  ProductScreen.routName:(context)=>ProductScreen(),
  ProductDetailScreen.routName:(context)=>ProductDetailScreen(),
  ProfileScreen.routName:(context)=>ProfileScreen(),
  CartScreen.routName:(context)=> CartScreen(),
  TrackerScreen.routName:(context)=>TrackerScreen(),
  HomeScreen.routName:(context)=>HomeScreen(),
  EditData.routName:(context)=>EditData(),
};