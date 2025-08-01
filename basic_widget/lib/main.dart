

import 'package:basic_widget/stack_alertdialogue_form/stack_alertdialogue_form.dart';



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
      debugShowCheckedModeBanner: false,
          home: StackAlertdialogueForm(),
    );
  }
}