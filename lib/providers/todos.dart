import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:parking/models/models.dart';
import 'package:http/http.dart' as http;
class TodosProvider with ChangeNotifier {
  List<Todos> _dataTodos =[];
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
         sleep(Duration(seconds: 5));
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
}