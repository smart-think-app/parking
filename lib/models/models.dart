import 'package:flutter/material.dart';
class ButtonInfo {
  String text = "";
  Color backgroundColor = Colors.white;
  Color foregroundColor = Colors.black;
  Color overlayColor = Color.fromARGB(255, 245, 190, 186);


  ButtonInfo(this.text , this.backgroundColor , this.foregroundColor , this.overlayColor);
}

class TextBoxStyle {
  String label;
  bool obscureText;
  Color backgroundColor;
  Color foregroundColor;
  String hintText;
  bool isOnlyNumber;
  Icon icon;
  TextBoxStyle({this.label="input" ,this.backgroundColor=Colors.white ,
  this.foregroundColor=Colors.black , 
  this.obscureText = false,this.hintText="",this.isOnlyNumber = false,this.icon = const Icon(Icons.abc)});
}