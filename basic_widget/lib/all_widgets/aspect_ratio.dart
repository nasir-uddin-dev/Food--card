import 'package:flutter/material.dart';

class Aspect_Ration extends StatelessWidget {
  const Aspect_Ration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.orangeAccent,
        alignment: Alignment.center,
        height: 300,
        width: double.infinity,
        child: AspectRatio(
          aspectRatio: 16/9,
          child: Container(color: Colors.blueGrey),
        ),
      ),
    );
  }
}
