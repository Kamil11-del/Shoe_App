import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/models/products_model.dart';
import 'package:e_commerce_app/ui/screens/product_details/custom_appBar.dart';
import 'package:e_commerce_app/ui/screens/product_details/description_container.dart';
import 'package:e_commerce_app/ui/screens/product_details/image_change_cont.dart';
import 'package:e_commerce_app/ui/widgets/bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);
  static String routName = "/ProductDetail";

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailArguments;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              HeadAppBar(),
              SizedBox(
                height: 0.03.sh,
              ),
              Expanded(
                flex: 1,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentImage = value;
                    });
                  },
                  itemCount:arguments.product.images.length,
                  itemBuilder: (context, index) => ImageChangeContainer(
                    product:arguments.product,
                    image:arguments.product.images[index],
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      arguments.product.images.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                ),
              ),
             DescriptionContainer(product: arguments.product)
            ],
          ),
        ),
      ),
    );
  }
  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentImage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentImage == index ? Colors.blue : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class ProductDetailArguments {
  final Product product;
  ProductDetailArguments({required this.product});
}


