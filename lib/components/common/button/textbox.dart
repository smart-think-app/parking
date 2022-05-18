import 'package:flutter/material.dart';
import '../../../models/models.dart';

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
      decoration: InputDecoration(
        labelText: widget.textbox.label,
        hintText: "Test",
        suffixIcon: const Icon(Icons.password),
        border:  OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 255, 86, 86), width: 2.0),
          borderRadius:BorderRadius.circular(25.0), ),
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
}