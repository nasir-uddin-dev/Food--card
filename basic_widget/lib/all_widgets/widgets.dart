import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x880C0C0C),

      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Show About Dialog"),
      //     onPressed: () {
      //       showDialog(
      //         context: context,
      //         builder: (context) => AboutDialog(
      //           applicationIcon: FlutterLogo(),
      //           applicationLegalese: 'Legalese',
      //           applicationName: 'Flutter App',
      //           applicationVersion: 'version 1.0.0',
      //           children: [Text("This is a test created by Nasir Uddin")],
      //         ),
      //       );
      //     },
      //   ),
      // ),

      //------------------------------------------ AboutListTile -------------------------------------------
      // body: Center(
      //   child: AboutListTile(
      //     applicationIcon: FlutterLogo(),
      //     applicationLegalese: 'Leagales',
      //     applicationName: 'Flutter App',
      //     applicationVersion: 'version 1.0.0',
      //     aboutBoxChildren: [Text("This is a text created by Nasir Uddin")],
      //   ),
      // ),

      //------------------------------------------ AbsorbPointer Widget -------------------------------------------
      // body: Center(
      //   child: Stack(
      //     alignment: AlignmentDirectional.center,
      //     children: [
      //       SizedBox(
      //         width: 200,
      //         height: 100,
      //         child: ElevatedButton(onPressed: (){}, child: null),
      //       ),
      //       SizedBox(
      //         width: 100,
      //         height: 200,
      //         child: AbsorbPointer(
      //           child: ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //               backgroundColor :Colors.blue.shade200,
      //             ),
      //             onPressed: (){}, child: null),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      //------------------------------------------ AlertDialog Widget -------------------------------------------
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Close"),
                  ),
                ],
                title: Text("Flutter App"),
                contentPadding: EdgeInsets.all(20),
                content: Text("This is the Alert Dialog"),
              ),
            );
          },
          child: Text("Show Alert Dialog"),
        ),
      ),
    );
  }
}
