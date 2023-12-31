import 'package:flutter/material.dart';
import 'package:todo/pages/home_page.dart';

class ToDoTile extends StatefulWidget {
  const ToDoTile({super.key});

  @override
  State<ToDoTile> createState() => _ToDoTileState();
}

class _ToDoTileState extends State<ToDoTile> {
// List
  List toDoList = [
    ["NaziyaTabassum", false],
    ["Vikas", false],
    ["chetan", false],
    ["Jawad", true],
    ["Do Something", false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Center(child: Text("TODO")),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return HomePage(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            );
          },
        ),
      ),
    );
  }
}
