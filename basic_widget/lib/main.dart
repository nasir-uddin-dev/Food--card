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
          home: Assignment(),
    );
  }
}


class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text('Hello World!', style: TextStyle(fontSize: 30, color: Colors.red),),
            SizedBox(height: 10,),
            Text('WelCome to Flutter', style: TextStyle(fontSize: 20, ),),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(

              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text("Press me", style: TextStyle(color: Colors.green),))
          ],
        ),
      ),
    );
  }
}
