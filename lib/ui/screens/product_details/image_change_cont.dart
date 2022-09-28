import 'package:e_commerce_app/core/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ImageChangeContainer extends StatelessWidget {
  const ImageChangeContainer({
    Key? key,
    required this.product, required this.image,
  }) : super(key: key);

  final Product product;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 42),
              child: Container(
                padding: EdgeInsets.all(20),
                height: 0.42.sh,
                width: 0.75.sw,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      180,
                    ),
                    border:Border.all(color:product.color)
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        150,
                      ),
                      border:Border.all(color:product.color)
                  ),
                ),
              ),
            ),
            Positioned(
              right: 90,
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(300),
                      bottomRight: Radius.circular(300),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(10, 20),
                          blurRadius: 15,
                          color: Colors.white),]
                ),
              ),
            ),
            Positioned(
              right: 80,
              bottom: 0,
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(300),
                      topRight: Radius.circular(300),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(-10, -20),
                          blurRadius: 15,
                          color: Colors.white),]
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlueAccent),
                    child: Text('${product.discount}%'),
                  ),
                  SizedBox(height: 0.03.sh,),
                  Container(
                    padding: EdgeInsets.all(40),
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      color: product.color,
                      borderRadius: BorderRadius.circular(
                        130,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(
                          130,
                        ),
                      ),
                    ),
                  ),
                ],),
            ),
            Positioned(
              right: 40,
              bottom: 50,
              child: Image(
                  height: 180,
                  image: AssetImage(image)),
            ),
          ],
        ),
      ),
    );
  }
}