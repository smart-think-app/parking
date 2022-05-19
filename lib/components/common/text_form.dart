import 'package:flutter/material.dart';
import '../../models/models.dart';

class TextForm extends StatefulWidget {
  final Function eventFx ;
  final TextFormStyle textFormStyle;
  TextForm(this.textFormStyle , this.eventFx );
  @override
  TextFormState createState() => TextFormState();
}

class TextFormState extends State<TextForm> {
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
      onChanged: (String value) {
        widget.eventFx(value);
      },
      keyboardType: getType(widget.textFormStyle.isOnlyNumber),
      obscureText: widget.textFormStyle.obscureText,
      decoration: InputDecoration(
        labelText: widget.textFormStyle.label,
      ),
    );
  }

  TextInputType getType(bool isOnlyNumber) {
    if (isOnlyNumber == true) {
      return TextInputType.number;
    }
    return TextInputType.text;
  }
}