import 'package:flutter/material.dart';
import '../../components/drawer/profile-not-login.dart';
import '../../components/drawer/profile-login.dart';
class MapPage extends StatefulWidget {
  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Center(child: Text("Hello World")),
      drawer: ProfileNotLogin(),
      // drawer: ProfileLogin(),
    );
  } 
}