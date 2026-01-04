import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("To do App"),
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),

      body: ElevatedButton(
          onPressed: (){},
          child:Text("Click Me")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),


    );
  }
}
