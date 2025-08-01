
import 'package:flutter/material.dart';

class GridviewBuilder extends StatelessWidget {
  const GridviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid view"), centerTitle: true,),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 21,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            ),
           itemBuilder: (BuildContext context , int index)
           {
            return ClipOval(
              //borderRadius: BorderRadius.circular(16),
              child: Image.network("https://images.pexels.com/photos/1199957/pexels-photo-1199957.jpeg?cs=srgb&dl=pexels-valeriya-1199957.jpg&fm=jpg", fit: BoxFit.cover,),
            );
           }
           ),
      ),
    );
  }
}
