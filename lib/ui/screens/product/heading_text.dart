import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadingTextRow extends StatelessWidget {
  const HeadingTextRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Our Product',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        Spacer(),
        Text('Sort by'),
        Icon(
          Icons.arrow_downward,
          size: 12,
        ),
        SizedBox(
          width: 0.01.sw,
        ),
      ],
    );
  }
}