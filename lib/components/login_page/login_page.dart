import 'package:flutter/material.dart';
import 'package:parking/models/models.dart';
import '../../components/common/textbox.dart';
class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String phoneInput = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body:Center(
        child: Container(child: (
          Column(children: [
            TextBox(TextBoxStyle(hintText: "Số điện thoại",isOnlyNumber: true,icon: const Icon(Icons.phone)), onChangedPhoneText),
            TextBox(TextBoxStyle(hintText: "Password",obscureText: true,icon: const Icon(Icons.password)), onChangedPassText)],
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
}