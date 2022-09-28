import 'package:e_commerce_app/ui/screens/drawer/menu_items.dart';
import 'package:e_commerce_app/ui/screens/login_screen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key, required this.currentItem, required this.onSelected}) : super(key: key);
  final MenuItemm currentItem;
  final ValueChanged<MenuItemm> onSelected;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 60,
                  width: 60,
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
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 10.0,vertical: 2),
                child: Text('Kamil Khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Spacer(flex: 2,),
              ...MenuItems.all.map(buildMenuItem).toList(),
              Spacer(flex: 4,),
              Padding(
                padding:EdgeInsets.only(left: 10,bottom: 10),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      FirebaseAuth.instance.signOut();
                      Navigator.pushNamed(context, LoginScreen.routName);
                    }, icon:Icon(Icons.logout,size: 30,),),
                    Text('LogOut',style: TextStyle(color: Colors.white,fontSize: 20),),
                    Spacer(flex: 3,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildMenuItem(MenuItemm item)=> ListTileTheme(
    selectedColor: Colors.white,
    child: ListTile(
      selectedTileColor: Colors.black26,
      selected: currentItem == item,
      minLeadingWidth: 20,
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap: ()=>onSelected(item),
    ),
  );
}
