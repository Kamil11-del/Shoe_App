import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TrackerScreen extends StatelessWidget {
  const TrackerScreen({Key? key}) : super(key: key);
static String routName="/Track_Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage('assets/images/trackerimg.jpg'),
                  height: 400.h,
                ),
                Padding(
                  padding:EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                  child: Row(
                    children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
                    SizedBox(width: 80.w,),
                    Text('TRACK',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
                  ],),
                ),
              ],
            ),
            Container(
              height: 280.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade200,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Delivery Status',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300,
                        ),
                        child: Icon(
                          Icons.desktop_mac_sharp,
                          size: 20,
                          color: Colors.deepPurple,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'Order is accepted',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            '10 oct 2022 at 10:30 PM',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 117,
                      ),
                      Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.deepPurpleAccent,
                          ),
                          child: Center(
                              child: Icon(
                                Icons.check,
                                size: 10,
                                color: Colors.white,
                              ))),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pinkAccent.shade100,
                        ),
                        child: Icon(
                          Icons.man_rounded,
                          size: 20,
                          color: Colors.pink,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Order is bieng prepared! ',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Align(alignment: Alignment.topLeft,
                            child: Text(
                              '30 oct 2022',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 74,
                      ),
                      Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.deepPurpleAccent,
                          ),
                          child: Center(
                              child: Icon(
                                Icons.check,
                                size: 10,
                                color: Colors.white,
                              ))),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orangeAccent.shade100,
                        ),
                        child: Icon(
                          Icons.electric_rickshaw_sharp,
                          size: 20,
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'Order will be delivered!',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '10 oct 2020 at 10:30 PM',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 87,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.shade400,
                    ),
                    child: Center(
                        child: Text(
                          'View packege information',
                          style: TextStyle(color: Colors.deepPurpleAccent),
                        )),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
