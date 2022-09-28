import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/models/products_model.dart';
import 'package:e_commerce_app/ui/screens/cart_screen/cart_list_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routName = "/CartScreen";

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Cart'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
            ),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            )),
        child: Column(
          children: [
            SizedBox(
              height: 19,
            ),
          ...List.generate(demoProduct.length, (index) => CardListContainer(product: demoProduct[index]),),
          ],
        ),
      ),
    );
  }
}
