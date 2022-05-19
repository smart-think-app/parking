import 'package:flutter/material.dart';
import '../../models/models.dart';
import '../../constants/style-constant.dart';
class TextBox extends StatefulWidget {
  final TextBoxStyle textbox;
  final Function onChangedFx;
  TextBox(this.textbox , this.onChangedFx);
  @override
  TextBoxState createState() => TextBoxState();
}

class TextBoxState extends State<TextBox> {
  final valueController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    valueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: valueController,
      keyboardType: getType(widget.textbox.isOnlyNumber),
      decoration: InputDecoration(
        labelText: widget.textbox.label,
        hintText: widget.textbox.hintText,
        hintStyle: TextStyle(color: widget.textbox.foregroundColor),
        labelStyle: TextStyle(color: widget.textbox.foregroundColor),
        suffixIcon: widget.textbox.icon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.textbox.foregroundColor, width: 2.0),
          borderRadius: BorderRadius.circular(BTN_BORDER_RADIUS)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.textbox.foregroundColor, width: 2.0),
          borderRadius: BorderRadius.circular(BTN_BORDER_RADIUS)
        ),
      ),
      obscureText: widget.textbox.obscureText,
      onChanged: (String value){
        widget.onChangedFx(value);
      },
      style: TextStyle(
        color: widget.textbox.foregroundColor,
        backgroundColor: widget.textbox.backgroundColor),
    );
  }

  TextInputType getType(bool isOnlyNumber) {
    if (isOnlyNumber == true) {
      return TextInputType.number;
    }
    return TextInputType.text;
  }
}