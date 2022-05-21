import 'package:flutter/material.dart';
import 'package:parking/models/models.dart';
import 'package:http/http.dart' as http;
class TodosProvider with ChangeNotifier {
  List<Todos> _items =[];
  List<Todos> get items {
    return [...items];
  }

  Future<void> getData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    try {
      final response = await http.get(url);
      print(response);
    } catch (e) {
      throw e;
    }
  }
}