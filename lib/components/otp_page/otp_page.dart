import 'package:flutter/material.dart';
import 'package:parking/models/models.dart';
import '../../constants/style-constant.dart';
import '../../components/common/button/default_button.dart';
class OTPPage extends StatefulWidget {
  @override
  OTPPageState createState() => OTPPageState();
}

class OTPPageState extends State<OTPPage> {
  String phone = "0946515847";
  TextEditingController verifyCodeController = TextEditingController();
  ButtonInfo btnActive = ButtonInfo(backgroundColor: THEME_BACKGROUND_COLOR,
  text: "Active",foregroundColor: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: THEME_BACKGROUND_COLOR,
        title: const Text("Active Account"),
        leading: const Icon(Icons.arrow_back),
      ),
      body: Container(
        child: Column(
          children: [
            Text("PhoneNumber: $phone"),
            TextField(textAlign: TextAlign.center,readOnly: true,decoration: const InputDecoration(
              hintText: "Verify Code"
            ),controller: verifyCodeController,),
            DefaultTextButtonComponent(btnActive, active),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        verifyCodeController.text = "123456";
                      });
                    },
                    child: const Text("Send Verify Code" , 
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: THEME_BACKGROUND_COLOR,
                  ),),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void active() {

  }

  void sendVerifyCode() {

  }
}