import 'package:flutter/material.dart';

import '../../../entities/todo.dart';
import '../../widgets/todo_item.dart';

class DoneTodoListTab extends StatelessWidget {
  const DoneTodoListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            child: TodoItem(
              todo: Todo(
                  "Title will be here", "Sub Title", DateTime.now(),false),
              onIconButtonPressed: (){},),
          );
        });
  }
}
