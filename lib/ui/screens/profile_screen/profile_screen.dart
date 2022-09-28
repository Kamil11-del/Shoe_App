import 'package:e_commerce_app/ui/screens/profile_screen/profile_bottom_container.dart';
import 'package:e_commerce_app/ui/screens/profile_screen/profile_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
static String routName="/Profile_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile'),
      centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 0.01.sh,),
            ProfileContainer(),
            SizedBox(
              height: 0.01.sh,),
            Text(
              'Kamil Khan',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 19),
            ),
            SizedBox(
              height: 0.01.sh,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Active Status',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
              ],
            ),
            SizedBox(
              height: 0.04.sh,
            ),
            ProfileBottomContainer(),
          ],
        ),
      ),
    );
  }
}


