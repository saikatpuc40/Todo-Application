import 'package:flutter/material.dart';
import 'package:todo_application/test.dart';
import 'package:todo_application/ui/screens/todo_list_screen.dart';

class TodoApplication extends StatelessWidget {
  const TodoApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListScreen(),
    );
  }
}


