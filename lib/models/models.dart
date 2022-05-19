import 'package:flutter/material.dart';
class ButtonInfo {
  String text = "";
  Color backgroundColor ;
  Color foregroundColor ;
  Color overlayColor ;


  ButtonInfo({this.text = "Button" , 
  this.backgroundColor = Colors.white , 
  this.foregroundColor = Colors.black, this.overlayColor = const Color.fromARGB(255, 245, 190, 186)});
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

class TextFormStyle {
  String label ;
  bool obscureText;
  bool isOnlyNumber;
  String hintText;
  Color backgroundColor;
  Color foregroundColor;
  Color borderColor;
  TextFormStyle({this.label="",this.obscureText = false,this.isOnlyNumber = false,
  this.hintText="",this.backgroundColor=Colors.white,this.foregroundColor = Colors.black,
  this.borderColor = Colors.blue});
}