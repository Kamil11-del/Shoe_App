import 'package:e_commerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, required this.text, required this.press,
  }) : super(key: key);
  final String text;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      constraints: BoxConstraints(minHeight: 0.07.sh,minWidth: 0.7.sw),
      fillColor: kPurpleColor,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}