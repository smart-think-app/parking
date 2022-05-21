import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:parking/models/models.dart';
import '../../components/drawer/profile-not-login.dart';
import 'package:http/http.dart' as http;
class TodosComponents extends StatelessWidget {
  Todos todoModel;
  TodosComponents(this.todoModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        children: [
          Text(todoModel.userId.toString()),
          Text(todoModel.userId.toString()),
          Text(todoModel.title),
          Text(todoModel.body)
        ],
      ),
    );
  }
}

class MapPage extends StatefulWidget {
  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  List<Todos> todos=[];
  @override
  void initState(){
    getData();
    super.initState();
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
  }

  @override


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child:GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: todos.map((e) => TodosComponents(e)).toList()
          ),
      ),
      drawer: ProfileNotLogin(),
      // drawer: ProfileLogin(),
    );
  }

  Future<void> getData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        setState(() {
          todos = parseTodos(response.body);
        });
      }
    } catch (e) {
      throw e;
    }
  }

  List<Todos> parseTodos(String responseBody) { 
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>(); 
    return parsed.map<Todos>((json) =>Todos.fromMap(json)).toList(); 
  }

}