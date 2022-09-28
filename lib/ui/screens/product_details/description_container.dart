import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/models/products_model.dart';
import 'package:e_commerce_app/ui/widgets/bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DescriptionContainer extends StatefulWidget {
  const DescriptionContainer({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<DescriptionContainer> createState() => _DescriptionContainerState();
}

class _DescriptionContainerState extends State<DescriptionContainer> {
  int selectedSize=0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
              EdgeInsets.symmetric(vertical: 18, horizontal: 26),
              child: Row(
                children: [
                  Text(
                    widget.product.name!,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kDarkBlueColor),
                  ),
                  Spacer(),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text('(${widget.product.rating})'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                widget.product.description!,
                style: TextStyle(color: kPurpleColor),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('Size:'),
                ...List.generate(
                  widget.product.size.length,
                      (index) => buildSizeContainer(index),
                ),
                SizedBox(
                  width: 0.02.sw,
                ),
              ],
            ),
            SizedBox(height: 0.01.sh,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('Available Color:'),
                ...List.generate(
                  widget.product.colors!.length,
                      (index) => buildColorContainer(index),
                ),
                SizedBox(
                  width: 0.03.sw,
                ),
              ],
            ),
            SizedBox(height: 0.02.sh,),
            BottomContainer(),
          ],
        ),
      ),
    );
  }
  Container buildColorContainer(int index) {
    return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: widget.product.colors![index].withOpacity(0.20),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Container(
          decoration:  BoxDecoration(
            color: widget.product.colors![index],
            borderRadius: BorderRadius.circular(100),
          ),
        )
    );
  }
  GestureDetector buildSizeContainer(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize=index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 60,
        decoration: BoxDecoration(
          color:selectedSize==index? Colors.lightBlueAccent:Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(widget.product.size[index],style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
