

import 'package:flutter/material.dart';

class addNewTodoScreen extends StatefulWidget {
  const addNewTodoScreen({super.key});

  @override
  State<addNewTodoScreen> createState() => _addNewTodoScreenState();
}

class _addNewTodoScreenState extends State<addNewTodoScreen> {

  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Todo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: _titleTEController,
              decoration: InputDecoration(
                hint: Text("Write a Title"),
                label: Text("Title")
              ),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              controller: _descriptionTEController,
              decoration: InputDecoration(
                hint: Text("Write a Description"),
                label: Text("Description")
              ),
            )


          ],
        ),
      ),
    );
  }
}
