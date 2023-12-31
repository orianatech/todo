// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage(
      {super.key,
      required this.onChanged,
      required this.taskCompleted,
      required this.taskName});

  final String taskName;
  final bool taskCompleted;

  Function(bool?)? onChanged;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Row(children: [
        //checkbox
        Checkbox(
          value: widget.taskCompleted,
          onChanged: widget.onChanged,
          activeColor: Colors.black,
        ),
        Text(
          widget.taskName,
          style: TextStyle(
              decoration: widget.taskCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
      ]),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(15),
    );
  }
}
