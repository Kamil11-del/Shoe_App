import 'package:flutter/material.dart';

class HeadAppBar extends StatelessWidget {
  const HeadAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        Text.rich(TextSpan(children: [
          TextSpan(
            text: 'X',
            style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          TextSpan(
              text: 'E',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25)),
        ])),
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: Container(
            alignment: Alignment.center,
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15), blurRadius: 38, color: Colors.red)
                ]),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 17,
            ),
          ),
        ),
      ],
    );
  }
}
