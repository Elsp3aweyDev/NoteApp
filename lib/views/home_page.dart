import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List todoList = [
    ["learn flutter", false],
    ["drink coffee", false],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(children: [Container()]);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              color: Colors.deepPurple,
              child: Center(
                child: Text(
                  style: TextStyle(color: Colors.white),
                  todoList[index][0],
                ),
              ),
            ),
          );
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Note app"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.purple,
    );
  }
}
