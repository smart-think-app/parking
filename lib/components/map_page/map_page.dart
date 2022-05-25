import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:parking/models/models.dart';
import 'package:parking/providers/todos.dart';
import 'package:provider/provider.dart';
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
  bool _init = true;
  @override
  void initState(){
    super.initState();
  }

  @override
  void didChangeDependencies(){
    if (_init) {
      Provider.of<TodosProvider>(context).getDataPost();
    }
    _init = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final todosData = Provider.of<TodosProvider>(context);
    final todos = todosData.items;
    return Scaffold(
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

}