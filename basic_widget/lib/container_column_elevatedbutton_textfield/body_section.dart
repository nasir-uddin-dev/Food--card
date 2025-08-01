// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class BodySection extends StatefulWidget {
  const BodySection({super.key});

  @override
  State<BodySection> createState() => _BodySectionState();
}

class _BodySectionState extends State<BodySection> {
  int counterValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //---------------------- facebook --------------------------------
        title: Text(
          "facebook",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        //------------------------ Menu Icon ---------------------------------
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.menu, color: Colors.white),
        ),

        //----------------------- Search Icon ----------------------------
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search_rounded, color: Colors.white),
          ),
        ],
      ),

      //------------------------- body --------------------------------
      body: Center(
        child: Column(
          //Creates a vertical array of children.
          crossAxisAlignment:
              CrossAxisAlignment.center, // It works Horizontal left alignment
          mainAxisAlignment:
              MainAxisAlignment.center, //It works Vertical alignment
          children: [
            //--------------------------Container Section ---------------------
            // Container(
            //   height: 300,
            //   width: 300,

            //   decoration: BoxDecoration(
            //     // color: Colors.blue,
            //     gradient: LinearGradient(
            //       colors: [Colors.blue, Colors.pink],
            //       begin: Alignment.topLeft,
            //       end: Alignment.bottomRight,
            //     ),
            //     borderRadius: BorderRadius.circular(25),
            //     border: Border.all(
            //       color: Colors.black,
            //       width: 5,
            //     )
            //   ),

            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text("Hello World", style: TextStyle(color: Colors.white, fontSize: 24),),
            //         Icon(Icons.account_box_outlined, color: Colors.white, size: 30,)
            //       ],
            //   )
            // ),

            //---------------------- Widget of Button --------------------------------------
            IconButton(
              onPressed: () {
                print("IconButton Pressed");
              },
              icon: Icon(Icons.person),
            ),

            SizedBox(height: 50),

            TextButton(
              onPressed: () {
                print("TextButton Pressed");
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                side: BorderSide(color: Colors.red, width: 2),
                minimumSize: Size(100, 50),

                // elevation: 3,
                // // ignore: deprecated_member_use
                // shadowColor: Colors.orange.withOpacity(.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              child: Text("Press me", style: TextStyle(color: Colors.white)),
            ),

            SizedBox(height: 50),

            Divider(
                color: Colors.red.shade100,
                indent: 60,
                endIndent: 60,
                thickness: 5,

            ),

            SizedBox(height: 50),

            ElevatedButton(
              onPressed: () {
                print("TextButton Pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                side: BorderSide(color: Colors.red, width: 2),
                minimumSize: Size(100, 50),

                // elevation: 3,
                // // ignore: deprecated_member_use
                // shadowColor: Colors.orange.withOpacity(.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              child: Text("Press me", style: TextStyle(color: Colors.white)),
            ),

            SizedBox(height: 50),

            OutlinedButton(
              onPressed: null,

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,

                //disabledBackgroundColor: Colors.brown,
                side: BorderSide(color: Colors.red, width: 2),
                minimumSize: Size(100, 50),

                // elevation: 3,
                // // ignore: deprecated_member_use
                // shadowColor: Colors.orange.withOpacity(.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              child: Text("Press me", style: TextStyle(color: Colors.white)),
            ),

            SizedBox(height: 50),

            Tooltip(
              message: "This is Container Button",
              showDuration: Duration(seconds: 5, days: 1),
  
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("Press me")),
              ),
            ),
          ],
        ),
      ),



      //------------------------ Button ---------------------------------
      floatingActionButton: FloatingActionButton(
        tooltip: "This is Floating action Button",
        onPressed: () {
          setState(() {
            counterValue++;
          });
        },
        // ignore: sort_child_properties_last
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
