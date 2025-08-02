import 'package:flutter/material.dart';

class App_Bar extends StatelessWidget {
  const App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
        backgroundColor: Colors.amber,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )
        ),
      ),
      body: Center(
        child: Text("Body", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
    );
  }
}