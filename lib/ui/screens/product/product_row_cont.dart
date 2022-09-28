import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ProductRowContainer extends StatelessWidget {
  const ProductRowContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          productContainer(image:'assets/images/shoe.png',text: 'Sneaker'),
          SizedBox(width: 0.03.sw,),
          productContainer(image:'assets/images/watch.png',text: 'Watch'),
          SizedBox(width: 0.03.sw,),
          productContainer(image:'assets/images/bag.png',text: 'BackPack'),
        ],
      ),
    );
  }

  Container productContainer({required image,required text}) {
    return Container(
      height: 0.06.sh,
      width: 0.30.sw,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(image),
            height: 40,
            width: 40,
          ),
          Text(text),
        ],
      ),
    );
  }
}