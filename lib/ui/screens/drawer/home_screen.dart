import 'package:e_commerce_app/ui/screens/cart_screen/cart_screen.dart';
import 'package:e_commerce_app/ui/screens/drawer/menu_items.dart';
import 'package:e_commerce_app/ui/screens/product/product_screen.dart';
import 'package:e_commerce_app/ui/screens/tracker_screen/tracker_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'menu_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
static String routName="/home_screen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MenuItemm currentItem = MenuItems.product;
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
     // slideWidth: MediaQuery.of(context).size.width*.70,
      style: DrawerStyle.defaultStyle,
      menuScreen: Builder(
        builder:(context)=> MenuScreen(
            currentItem:currentItem,
          onSelected: (item){
              setState(() {
                currentItem=item;
              });
              ZoomDrawer.of(context)?.close();
          },
        ),
      ),
      mainScreen: getScreen(),
      borderRadius: 24.0,
      angle: 0,
     // drawerShadowsBackgroundColor: Colors.grey[300]!,
      slideWidth: MediaQuery.of(context).size.width*.65,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
      showShadow: true,
      menuBackgroundColor: Colors.indigo
      ,
    );
  }

  Widget  getScreen() {
    switch (currentItem){
      case MenuItems.product:
        return ProductScreen();
      case MenuItems.cart:
        return CartScreen();
      case MenuItems.wishList:
        return TrackerScreen();
      case MenuItems.settings:
      default:
        return Scaffold();
    }
  }
}
