import 'package:flutter/material.dart';
import '../../constants/style-constant.dart';
import '../common/circle_avatar.dart';
class ProfileNotLogin extends StatefulWidget {
  @override
  ProfileNotLoginState createState() => ProfileNotLoginState();
}

class ProfileNotLoginState extends State<ProfileNotLogin> {
  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(
      children:  [
        DrawerHeader(
          decoration:  BoxDecoration(
            color: THEME_BACKGROUND_COLOR
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                MyCircleAvatar(),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: const [
                  Text("Login", style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),),
                  Text("Register",style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),)
                ],)
              ],),)
          ),
          const ListTile(title: Text("Support"),),
        ],
      ),
    ); 
  }
}