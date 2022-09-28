import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/models/products_model.dart';
import 'package:e_commerce_app/ui/screens/cart_screen/cart_screen.dart';
import 'package:e_commerce_app/ui/screens/product/heading_text.dart';
import 'package:e_commerce_app/ui/screens/product/product_card.dart';
import 'package:e_commerce_app/ui/screens/product/product_row_cont.dart';
import 'package:e_commerce_app/ui/screens/product_details/product_detail_screen.dart';
import 'package:e_commerce_app/ui/widgets/bottom_nav_bar.dart';
import 'package:e_commerce_app/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);
  static String routName = "/product_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(TextSpan(children: [
          TextSpan(
            text: 'X',
            style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),
          ),
          TextSpan(text: 'E', style: TextStyle(color: Colors.lightBlueAccent)),
        ])),
        leading:IconButton(icon: Icon(Icons.menu_open,),onPressed: (){
          ZoomDrawer.of(context)!.toggle();
        },),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          )
        ],
        centerTitle: true,
        backgroundColor: kBackgroundColor,
      ),
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadingTextRow(),
            SizedBox(
              height: 0.02.sh,
            ),
            ProductRowContainer(),
            Container(
              height: 450,
              width: 350,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemCount: demoProduct.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: demoProduct[index],
                  press: ()=>Navigator.pushNamed(context, ProductDetailScreen.routName,
                    arguments: ProductDetailArguments(product: demoProduct[index],),
                  ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        clipBehavior: Clip.none,
        children: [
          FloatingActionButton(
            backgroundColor: kDarkBlueColor,
            onPressed: () {Navigator.pushNamed(context, CartScreen.routName);},
            child: Icon(
              Icons.add_shopping_cart_outlined,
              color: Colors.blueAccent,
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              alignment: Alignment.center,
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white),
              ),
              child: Text(
                '2',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(selectMenu: MenuState.home,),
    );
  }
}
