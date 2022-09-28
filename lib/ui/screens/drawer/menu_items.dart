import 'package:flutter/material.dart';

class MenuItems{
  static const product = MenuItemm('Catalogue',Icons.home_filled);
  static const favorite = MenuItemm('Favourites',Icons.favorite);
  static const cart = MenuItemm('Your Cart',Icons.add_shopping_cart);
  static const wishList = MenuItemm('Your Order',Icons.bookmark_border);
  static const settings = MenuItemm('Settings',Icons.settings);

  static const all =<MenuItemm>[
    product,cart,favorite,wishList,settings
  ];
}

class MenuItemm{
  final String title;
  final IconData icon;

   const MenuItemm ( this.title, this.icon);
}