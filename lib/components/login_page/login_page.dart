import 'package:flutter/material.dart';
import 'package:parking/models/models.dart';
import '../../components/common/textbox.dart';
import '../../constants/style-constant.dart';
import '../../components/common/button/default_button.dart';
import '../../constants/style-constant.dart';
class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String phoneInput = "";
  String password = "";
  String temp ="Huy";
  TextBoxStyle phoneTextBoxStyle = TextBoxStyle(
              hintText: "Số điện thoại",
              backgroundColor: THEME_BACKGROUND_COLOR,
              foregroundColor: Colors.white,
              isOnlyNumber: true,
              icon: const Icon(Icons.phone,));
  TextBoxStyle passwordTextBoxStyle = TextBoxStyle(
              hintText: "Password",
              backgroundColor: THEME_BACKGROUND_COLOR,
              foregroundColor: Colors.white,
              obscureText: true,icon: const Icon(Icons.password));
  ButtonInfo loginBtnStyle = ButtonInfo(backgroundColor: BUTTON_COLOR,text: "Đăng nhập",
  foregroundColor: Colors.white); 
  TextStyle textStyle = const  TextStyle(color: Colors.white , decoration: TextDecoration.underline);
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: const Text("Login"),),
      backgroundColor: THEME_BACKGROUND_COLOR,
      body:Center(
        child: Container(
          child:
         (
          Column(children: [
            TextBox(phoneTextBoxStyle, onChangedPhoneText),
            TextBox(passwordTextBoxStyle, onChangedPassText),
            DefaultTextButtonComponent(loginBtnStyle,login),Text(temp),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children:  [
              Text("Quên mật khẩu",style: textStyle),
              Text("Đăng ký",style: textStyle,)
            ],)
            ],
            )
          ),
          
        ),
      )
    );
  }

  void onChangedPhoneText(String value){
    setState(() {
      phoneInput = value;
    });
  }

  void onChangedPassText(String value) {
    setState(() {
      password = value;
    });
  }

  void login() {
    setState(() {
      temp = "$phoneInput - $password";
    });
  }
}