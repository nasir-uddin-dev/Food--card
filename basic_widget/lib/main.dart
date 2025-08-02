

import 'package:basic_widget/all_widgets/backdrop_filter.dart';



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
     
      title: "Flutter App",
      color: Colors.grey,
      debugShowCheckedModeBanner: false,
          home: Backdrop_Filter(),
    );
  }
}