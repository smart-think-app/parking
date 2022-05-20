import 'package:flutter/material.dart';
import '../../constants/style-constant.dart';
import '../common/circle_avatar.dart';
class MenuDto {
  String name;
  IconData icon;
  bool isSelected;

  MenuDto(this.name , this.icon , {this.isSelected = false});
}

class ProfileLogin extends StatefulWidget {
  @override
  ProfileLoginState createState() => ProfileLoginState();
}

class ProfileLoginState extends State<ProfileLogin> {
  String name = "Tran Quoc Huy";
  String phone = "0946515847";
  List<MenuDto> listMenu = [
    MenuDto("Booking History" , Icons.history),
    MenuDto("Favorite" , Icons.favorite , isSelected: true),
    MenuDto("Account" , Icons.account_balance),
    MenuDto("Feedback" , Icons.feedback),
    MenuDto("FeeDebt Checking" , Icons.money),
    MenuDto("Support" , Icons.support),
    MenuDto("logout" , Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(
      children: getWidget()
      ),
    ); 
  }

  List<Widget> getWidget() {
    List<Widget> baseWidgets = [DrawerHeader(
          decoration: const  BoxDecoration(
            color: THEME_BACKGROUND_COLOR
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                MyCircleAvatar(),
                Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Text(name, style: const TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),),
                  Text(phone,style: const TextStyle(
                    color: Colors.white,
                  ),)
                ],)
              ],),)
          ),];
    List<Widget> menuWidget = listMenu.map(
      (e) =>  ListTile(onTap: (){},leading: Icon(e.icon),
      title: Text(e.name),
      selectedColor: Colors.green,
      selected: e.isSelected,)).toList();
    baseWidgets.addAll(menuWidget);
    return baseWidgets;
  }
}