import 'package:flutter/material.dart';
import './components/login_page/login_page.dart';
import './components/common/textbox.dart';
import './models/models.dart';
import './components/common/button/default_button.dart';
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
      body: LoginPage()
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
