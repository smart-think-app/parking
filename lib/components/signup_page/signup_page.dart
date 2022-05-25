import 'package:flutter/material.dart';
import 'package:parking/constants/style-constant.dart';
import '../../components/common/text_form.dart';
import '../../models/models.dart';
import '../../components/common/button/default_button.dart';
import '../common/buyer_avatar/buyer_avatar.dart';
class SignupPage extends StatefulWidget {
  @override
  SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {

  String firstName = "";
  String lastName = "";
  String email = "";
  String address = "";
  String password = "";
  String confirmPassword = "";
  String temp = "";

  TextFormStyle formStyleFirstName = TextFormStyle(label: "FirstName");
  TextFormStyle formStyleLastName = TextFormStyle(label: "LastName");
  TextFormStyle formStyleEmail = TextFormStyle(label: "Email");
  TextFormStyle formStyleAddress = TextFormStyle(label: "Address");
  TextFormStyle formStylePassword = TextFormStyle(label: "Password",obscureText: true);
  TextFormStyle formStyleConfirmPassword = TextFormStyle(label: "ConfirmPassword",obscureText: true);
  ButtonInfo btnSignup = ButtonInfo(text: "Register" , backgroundColor: THEME_BACKGROUND_COLOR,
  foregroundColor: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SignUp")),
      body: Center(
        child: Container(
          child: (
            Column(
              children: [
                BuyerAvatar.Offline,
                BuyerAvatar.Online,
                TextForm(formStyleFirstName , onChangedFirstName),
                TextForm(formStyleLastName , onChangedLastName),
                TextForm(formStyleEmail , onChangedEmail),
                TextForm(formStyleAddress , onChangedAddress),
                TextForm(formStylePassword , onChangedPassword),
                TextForm(formStyleConfirmPassword , onChangedConfirmPassword),
                DefaultTextButtonComponent(btnSignup, register),
                Text("$temp")
              ],
            )
          ),
        ),
      ),
    );
  }

  void onChangedFirstName(String value) {
    setState(() {
      firstName = value;
    });
  }

  void onChangedLastName(String value) {
    setState(() {
      lastName = value;
    });
  }

  void onChangedEmail(String value) {
    setState(() {
      email = value;
    });
  }

  void onChangedAddress(String value) {
    setState(() {
      address = value;
    });
  }

  void onChangedPassword(String value) {
    setState(() {
      password = value;
    });
  }

  void onChangedConfirmPassword(String value) {
    setState(() {
      confirmPassword = value;
    });
  }

  void register() {
    setState(() {
      temp = "$firstName - $lastName - $email - $address - $password - $confirmPassword";
    });
  }
}