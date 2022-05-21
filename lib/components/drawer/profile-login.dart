import 'package:flutter/material.dart';
import '../../constants/style-constant.dart';
import '../common/circle_avatar.dart';
class MenuDto {
  String name;
  IconData icon;
  bool isSelected;
  int data;

  MenuDto(this.name , this.icon , this.data, {this.isSelected = false});
}
  
class ProfileLogin extends StatefulWidget {
  @override
  ProfileLoginState createState() => ProfileLoginState();
}

class ProfileLoginState extends State<ProfileLogin> {
  String name = "Tran Quoc Huy";
  String phone = "0946515847";
  List<MenuDto> listMenu = [
    MenuDto("Booking History" , Icons.history,1),
    MenuDto("Favorite" , Icons.favorite , 2),
    MenuDto("Account" , Icons.account_balance,3),
    MenuDto("Feedback" , Icons.feedback,4),
    MenuDto("FeeDebt Checking" , Icons.money,5),
    MenuDto("Support" , Icons.support,6),
    MenuDto("logout" , Icons.logout,7),
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
      (e) =>  ListTile(onTap: (){
        onTapMenu(e);
      },leading: Icon(e.icon),
      title: Text(e.name),
      selectedColor: Colors.white,
      selectedTileColor: THEME_BACKGROUND_COLOR,
      selected: e.isSelected,)).toList();
    baseWidgets.addAll(menuWidget);
    return baseWidgets;
  }

  void onTapMenu(MenuDto itemSelected) {
    setState(() {
      for (var item in listMenu) {
      item.isSelected = itemSelected.data == item.data;
    }
    });
  }
}