import 'package:e_commerce_app/ui/screens/edit_profile/edit_page.dart';
import 'package:e_commerce_app/ui/screens/profile_screen/profile_details.dart';
import 'package:e_commerce_app/ui/screens/tracker_screen/tracker_screen.dart';
import 'package:flutter/material.dart';
class ProfileBottomContainer extends StatelessWidget {
  const ProfileBottomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        color: Colors.grey.shade300,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          ProfileDetail(
            press: (){
              Navigator.pushNamed(context, EditData.routName);
            },
            prefixIcon: Icons.person,
            text: 'Edit Profile',
            suffixIcon: Icons.arrow_forward_ios,
          ),
          SizedBox(
            height: 25,
          ),

          ProfileDetail(
            press: (){},
            prefixIcon: Icons.location_on,
            text: 'Shopping Address',
            suffixIcon: Icons.arrow_forward_ios,
          ),
          SizedBox(
            height: 25,
          ),

          ProfileDetail(
            press: (){},
            prefixIcon: Icons.favorite,
            text: 'Wishlist',
            suffixIcon: Icons.arrow_forward_ios,
          ),
          SizedBox(
            height: 25,
          ),

          ProfileDetail(
            press: (){Navigator.pushNamed(context, TrackerScreen.routName);},
            prefixIcon: Icons.location_history_sharp,
            text: 'Order History',
            suffixIcon: Icons.arrow_forward_ios,
          ),
          SizedBox(
            height: 25,
          ),

          ProfileDetail(
            press: (){},
            prefixIcon: Icons.notifications,
            text: 'Notifaction',
            suffixIcon: Icons.arrow_forward_ios,
          ),
          SizedBox(
            height: 25,
          ),

          ProfileDetail(
            press: (){},
            prefixIcon: Icons.credit_card_sharp,
            text: 'Cards',
            suffixIcon: Icons.arrow_forward_ios,
          ),
        ],
      ),
    );
  }
}
