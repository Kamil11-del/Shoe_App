import 'package:flutter/material.dart';
class ProfileDetail extends StatelessWidget {
  ProfileDetail({
    required this.text,
    required this.prefixIcon,
    required this.suffixIcon,
    Key? key, required this.press,
  }) : super(key: key);

  String text;
  IconData prefixIcon, suffixIcon;
final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          Icon(
            prefixIcon,
            color: Colors.grey,
            size: 22,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(
            suffixIcon,
            color: Colors.grey,
          ),
          SizedBox(width: 16,),
        ],
      ),
    );
  }
}
