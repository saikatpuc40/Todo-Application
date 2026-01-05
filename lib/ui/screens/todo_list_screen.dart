import 'package:flutter/material.dart';
import 'package:todo_application/ui/screens/add_new_todo_screen.dart';
import 'package:todo_application/ui/widgets/todo_item.dart';

import '../../entities/todo.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Todo> _todoList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return TodoItem(todo: Todo("Title will be here", "Sub Title", DateTime.now(),false),
                    onIconButtonPressed: (){},);
          }),
          floatingActionButton: FloatingActionButton.extended(
          tooltip: "Add New Todo",
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>addNewTodoScreen()));
          },
          icon: Icon(Icons.add), 
          label: Text("Add"),
      ),
    );
  }
}


