
import 'package:basic_widget/all_widgets/aspect_ratio.dart';


import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey,
      debugShowCheckedModeBanner: false,
          home: Aspect_Ration(),
    );
  }
}