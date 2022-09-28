import 'package:e_commerce_app/routes.dart';
import 'package:e_commerce_app/ui/screens/Splash_screen/splash_screen.dart';
import 'package:e_commerce_app/ui/screens/login_screen/login_screen.dart';
import 'package:e_commerce_app/ui/screens/product/product_screen.dart';
import 'package:e_commerce_app/ui/screens/product_details/product_detail_screen.dart';
import 'package:e_commerce_app/ui/widgets/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360,690),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (_,child) => MaterialApp(
debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.routName,
          routes: routes,
          theme: theme(),
        ),
    );
  }
}