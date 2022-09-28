import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/ui/screens/product/product_screen.dart';
import 'package:e_commerce_app/ui/screens/profile_screen/profile_screen.dart';
import 'package:e_commerce_app/utils/enums.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.selectMenu,
  }) : super(key: key);
  final MenuState selectMenu;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 7,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color:
                    MenuState.home == selectMenu ? kDarkBlueColor : Colors.grey,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ProductScreen.routName);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: MenuState.favorite == selectMenu
                    ? kDarkBlueColor
                    : Colors.grey,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.chat,
                color: MenuState.message == selectMenu
                    ? kDarkBlueColor
                    : Colors.grey,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: MenuState.profile == selectMenu
                    ? kDarkBlueColor
                    : Colors.grey,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.routName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
