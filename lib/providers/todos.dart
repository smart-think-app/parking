import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:parking/models/models.dart';
import 'package:http/http.dart' as http;
class TodosProvider with ChangeNotifier {
  List<Todos> _dataTodos =[
    // Todos(1,1,"title1","body1"),
    // Todos(2,2,"title2","body2"),
    // Todos(3,3,"title3","body3"),
    // Todos(4,4,"title4","body4")
  ];
  List<Todos> get items {
    return [..._dataTodos];
  }

  Future<void>getDataPost() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
        _dataTodos = parsed.map<Todos>((json) =>Todos.fromMap(json)).toList(); 
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
}