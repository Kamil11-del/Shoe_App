import 'package:flutter/material.dart';
class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 180,
      width: 180,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xFF79F8F8))),
      child:   Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Color(0xFF79F8F8))),
        child:  Container(
          clipBehavior: Clip.hardEdge,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.pinkAccent),
          child: Image(
            image: AssetImage('assets/images/profile.png'),

          ),
        ),
      ),
    );
  }
}

