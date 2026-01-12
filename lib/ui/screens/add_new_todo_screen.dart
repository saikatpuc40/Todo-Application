

import 'package:flutter/material.dart';

import '../../entities/todo.dart';

class addNewTodoScreen extends StatefulWidget {
  const addNewTodoScreen({super.key, required this.onAddTodo});

  final Function(Todo) onAddTodo;

  @override
  State<addNewTodoScreen> createState() => _addNewTodoScreenState();
}

class _addNewTodoScreenState extends State<addNewTodoScreen> {

  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Todo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleTEController,
                decoration: InputDecoration(
                  hint: Text("Write a Title"),
                  label: Text("Title")
                ),
                autovalidateMode:AutovalidateMode.onUserInteraction,
                validator: (String? value){
                  if(value?.trim().isEmpty ?? true){
                    return "Title can't be empty";
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 16,),
              TextFormField(
                controller: _descriptionTEController,
                decoration: InputDecoration(
                  hint: Text("Write a Description"),
                  label: Text("Description")
                ),
                maxLength: 200,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:(String? value){
                  if(value?.trim().isEmpty ?? true){
                    return "Description can't be empty";
                  }
                  else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 16,),
              ElevatedButton(
                  onPressed: (){
                    if(_formkey.currentState!.validate()){
                      Todo todo = Todo(_titleTEController.text.trim(),
                                 _descriptionTEController.text.trim(),
                                  DateTime.now());
                      widget.onAddTodo(todo);
                      Navigator.pop(context);
                    }
                  },
                  child: Text("ADD")
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose(){
    _titleTEController.dispose();
    _descriptionTEController.dispose();
    super.dispose();
  }
}


