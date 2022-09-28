import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Text('\$'),
            Text(
              '269.00',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
            ),
            Spacer(),
            GestureDetector(
              onTap: (){},
              child: Container(
                height: 40,
                width: 130,
               decoration: BoxDecoration(
                 color: kBackgroundColor,
                 borderRadius: BorderRadius.circular(20)
               ),
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 10),
                 child: Row(children: [
                    Icon(Icons.add_shopping_cart_outlined,color: Colors.deepPurpleAccent,),
                   Text('Add To Cart',style: TextStyle(color:Colors.deepPurpleAccent ,fontWeight: FontWeight.bold),)
                  ],),
               )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
