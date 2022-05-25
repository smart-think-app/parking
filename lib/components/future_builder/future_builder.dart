import 'package:flutter/material.dart';
import 'package:parking/components/map_page/map_page.dart';
import 'package:parking/providers/todos.dart';
import 'package:provider/provider.dart';

class MyFutureBuilderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Provider.of<TodosProvider>(context, listen: false).getDataPost(),
        builder: (ctx , dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            return Center (child: Text("Waiting"));
          } else {
            if (dataSnapshot.error != null) {
              return Text("Error");
            } else {
              return Consumer<TodosProvider>(
                builder: (ctx , todosData , child) =>ListView.builder(
                  itemCount: todosData.items.length,
                  itemBuilder: (ctx , i) => TodosComponents(todosData.items[i]),
                ));
            }
          }
        },
      ),
    );
  }
}