import 'package:flutter/material.dart';
import 'package:parking/components/login_page/login_page.dart';
import 'package:parking/components/signup_page/signup_page.dart';
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
          decoration: const  BoxDecoration(
            color: THEME_BACKGROUND_COLOR
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                MyCircleAvatar(),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      onClickLogin(context);
                    },
                    child: const Text(
                    "Login",style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),),
                  GestureDetector(
                    onTap: (){
                      onCLickSignUp(context);
                    },
                    child:const Text("Register",style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),) ),
                ],)
              ],),)
          ),
          const ListTile(title: Text("Support"),leading: Icon(Icons.support),),
        ],
      ),
    ); 
  }

  void onClickLogin(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return LoginPage();
    }));
  }

  void onCLickSignUp(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return SignupPage();
    }));
  }
}