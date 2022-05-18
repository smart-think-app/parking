import 'package:flutter/material.dart';
import 'package:parking/models/models.dart';
import './components/common/button/default_button.dart';
import './components/common/button/textbox.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String inputText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Parking"),
      ),
      body: Column(
        children: 
        [TextBox(TextBoxStyle(
          label: "Username",
          foregroundColor: Colors.red,
          obscureText: true),change),
          DefaultTextButtonComponent(
            ButtonInfo("Hello World", Colors.white , Colors.blue , Color.fromARGB(255, 243, 74, 62)),
            text)
        ],mainAxisAlignment: MainAxisAlignment.center,),
    );
  }

  void text(){
    print(inputText);
  }
  void change(String value){
    final textValue  = value;
    setState(() {
      inputText = textValue;  
    });
  }
}
