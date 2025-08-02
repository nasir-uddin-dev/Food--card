import 'package:flutter/material.dart';

class Base_Line extends StatelessWidget {
  const Base_Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            image: DecorationImage(
              image: NetworkImage(
                "https://images.pexels.com/photos/1895024/pexels-photo-1895024.jpeg?cs=srgb&dl=pexels-fox-58267-1895024.jpg&fm=jpg",
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Baseline(
            baseline: 0,
            baselineType: TextBaseline.alphabetic,
            child: FlutterLogo(size: 50,),
          ),
        ),
      ),
    );
  }
}
