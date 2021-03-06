import 'package:flutter/material.dart';
import 'package:parking/components/future_builder/future_builder.dart';
import 'package:parking/providers/todos.dart';
import 'package:provider/provider.dart';
import './components/login_page/login_page.dart';
import './constants/style-constant.dart';
import './components/signup_page/signup_page.dart';
import './components/map_page/map_page.dart';
import './components/otp_page/otp_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> TodosProvider(),
      child: MaterialApp(
      title: 'Parking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    ),
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
      backgroundColor: THEME_BACKGROUND_COLOR,
       // child: (LoginPage()),
            // child: (SignupPage()),
            // child: (MapPage()),
            // child: (OTPPage()),
      body: MyFutureBuilderComponent()
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
