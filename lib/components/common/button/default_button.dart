import 'package:flutter/material.dart';
import '../../../models/models.dart';
import '../../../constants/style-constant.dart';
class DefaultTextButtonComponent extends StatelessWidget {
  final ButtonInfo buttonInfo;
  final Function eventFx;
  DefaultTextButtonComponent(this.buttonInfo,this.eventFx);

  @override
  Widget build(BuildContext context) {  
    return TextButton(
      child: Text(buttonInfo.text),
      onPressed: (){
        eventFx();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonInfo.backgroundColor),
        foregroundColor: MaterialStateProperty.all<Color>(buttonInfo.foregroundColor),
        overlayColor: MaterialStateProperty.all<Color>(buttonInfo.overlayColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BTN_BORDER_RADIUS),
        ))
      ));
  }
}