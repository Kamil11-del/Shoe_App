import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/models/products_model.dart';
import 'package:flutter/material.dart';
class ProductCard extends StatelessWidget {
  ProductCard({required this.product, required this.press
  });
Product product;
final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  product.discount!=null? Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlueAccent),
                      child: Text('${product.discount}%'),
                    ):Container(),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color:product.favorite? Colors.red:Colors.grey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: GestureDetector(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: product.color,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: product.color,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white)),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      bottom: 0,
                      child: Image(
                        width: 150,
                        height: 150,
                        image: AssetImage(product.image!),
                      ))
                ],
              ),
              Text(product.name!,
                  style: TextStyle(
                    color: kDarkBlueColor,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('\$ ',style: TextStyle(color: kDarkBlueColor,fontSize: 10),),
                  Text(product.price.toString(),style: TextStyle(color: kDarkBlueColor,fontSize: 20,fontWeight: FontWeight.bold),),
                ],),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.yellow,size: 14,),
                  Icon(Icons.star,color: Colors.yellow,size: 14,),
                  Icon(Icons.star,color: Colors.yellow,size: 14,),
                  Icon(Icons.star,color: Colors.yellow,size: 14,),
                  Icon(Icons.star,color: Colors.yellow,size: 14,),
                  Text('(${product.rating})',style: TextStyle(fontSize: 12),),
                ],),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}