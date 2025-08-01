import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counterValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //An app bar to display at the top of the scaffold.
        backgroundColor: Colors
            .blueAccent, //The fill color to use for an app bar's [Material].
        title: Text(
          //The primary widget displayed in the app bar.
          "facebook",
          style: TextStyle(
            //If non-null, the style to use for this text.
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight
                .w800, //The typeface thickness to use when painting the text (e.g., bold).
          ),
        ),
        centerTitle: true, //Whether the title should be centered.
        //properties : widget which starts the fisrt capital letter
        leading: Icon(Icons.menu, color: Colors.white),

        actions: [
          //A list of Widgets to display in a row after the [title] widget.
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search_rounded, color: Colors.white),
          ),
        ],
      ),

      //-------------------------------------- body -------------------------------------------------------//
      // Row -> Horizontal , Column -> Vertical

      body: Center(
        child: Text(counterValue.toString(), style: TextStyle(fontSize: 70)),
      
      ),

      //-------------------------------- button -----------------------------------------------//
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            //Statement
            counterValue++;
            // print(counterValue);
          });

        },
        child: Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.blue,
      ), //The callback that is called when the button is tapped or otherwise activated.
      //If this is set to null, the button will be disabled.

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
