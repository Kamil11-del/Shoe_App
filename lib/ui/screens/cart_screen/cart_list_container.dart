import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CardListContainer extends StatefulWidget {
  const CardListContainer({
    Key? key, required this.product,
  }) : super(key: key);
  final Product product;
  @override
  State<CardListContainer> createState() => _CardListContainerState();
}

class _CardListContainerState extends State<CardListContainer> {
  int count=1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Container(
        height: 0.15.sh,
        width: 0.9.sw,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.deepOrangeAccent),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: -6,
                    child: Image(
                      image: AssetImage(widget.product.image!),
                      height: 70,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 0.4.sw,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.product.name!,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    '${widget.product.price*count}',
                    style: TextStyle(color: kDarkBlueColor,fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 0.15.sw,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 26,
                  width: 26,
                  child: RawMaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    elevation: 3.2,
                    onPressed: () {
                      setState(() {
                        count--;
                      });
                    },
                    fillColor: Colors.white,
                    child: Icon(Icons.remove),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '$count',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 26,
                  width: 26,
                  child: RawMaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    elevation: 3.2,
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    fillColor: Color(0xFF6CCEFF),
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}