import 'package:flutter/material.dart';
import 'package:parking/models/models.dart';
import '../../components/common/textbox.dart';
import '../../constants/style-constant.dart';
import '../../components/common/button/default_button.dart';
class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String phoneInput = "";
  String password = "";
  String temp ="Huy";
  TextBoxStyle phoneTextBoxStyle = TextBoxStyle(
              hintText: "Số điện thoại",isOnlyNumber: true,icon: const Icon(Icons.phone));
  TextBoxStyle passwordTextBoxStyle = TextBoxStyle(
              hintText: "Password",obscureText: true,icon: const Icon(Icons.password));
  ButtonInfo loginBtnStyle = ButtonInfo(backgroundColor: BUTTON_COLOR,text: "Đăng nhập",
  foregroundColor: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body:Center(
        child: Container(child: (
          Column(children: [
            TextBox(phoneTextBoxStyle, onChangedPhoneText),
            TextBox(passwordTextBoxStyle, onChangedPassText),
            DefaultTextButtonComponent(loginBtnStyle,login),Text(temp)],
            
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
    print(phoneInput);
  }

  void onChangedPassText(String value) {
    setState(() {
      password = value;
    });
    print(password);
  }

  void login() {
    setState(() {
      temp = "$phoneInput - $password";
    });
  }
}