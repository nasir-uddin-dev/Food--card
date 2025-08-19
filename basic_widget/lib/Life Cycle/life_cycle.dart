// What is Widget ?
// Widget : A discreate block of an app's UI containing :
//  ->  a static configuration (Stateless & Stateful widgets)
//  ->  optionally, persistent state (State class)
//  ->  a render() method (Render Object)

//Actual Widgets have no Life Cycle
import 'package:basic_widget/google_drive_drawer/drive_drawer.dart';
import 'package:flutter/material.dart';

class counterApp extends StatefulWidget {
  counterApp({super.key}) {
    //Calling Constructor
    print('1 constructor');
  }

  @override
  State<counterApp> createState() {
    //createState(): When the Framework is instructed to build a StatefulWidget, it immediately calls createState()
    print('2 create state');
    return _counterAppState();
  }
}

class _counterAppState extends State<counterApp> {
  int number = 0;

  @override
  void initState() {
    //initState(): This is the first method called when the widget is created (after the class constructor, of course.)
    // initState is called once and only once. It must call super.initState().
    // TODO: implement initState
    super.initState();
    print('3 initState');
  }

  @override
  void deactivate() {
    //deactivate(): Deactivate is called when State is removed from the tree,
    // but it might be reinserted before the current frame change is finished.
    // This method exists basically because State objects can be moved from one point in a tree to another.
    // TODO: implement deactivate
    super.deactivate();
    print('4 deactivate');
  }

  @override
  void dispose() {
    //dispose(): dispose() is called when the State object is removed, which is permanent.
    // This method is where you should unsubscribe and cancel all animations, streams, etc.
    // TODO: implement dispose
    super.dispose();
    print('5 dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number.toString(),
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),

          SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //setState(): This method is called often from the framework itself and from the developer. Its used to notify the framework that data has changed
                    setState(() {
                      number--;
                      //print(number);
                    });
                  },
                  child: Text("-", style: TextStyle(fontSize: 40)),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number++;
                      //print(number);
                    });
                  },
                  child: Text("+", style: TextStyle(fontSize: 40)),
                ),

                ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DriveDrawer()));
                }, child: Text('DriveDrawer'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
