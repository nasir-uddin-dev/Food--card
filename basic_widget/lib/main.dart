
import 'package:basic_widget/Money%20Management/money_management.dart';
import 'package:basic_widget/Water%20Tanker/waterTracker.dart';
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
          home: MoneyManagement(),
    );
  }
}


