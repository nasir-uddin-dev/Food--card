import 'package:flutter/material.dart';

class Block_Semantics extends StatefulWidget {
  const Block_Semantics({super.key});

  @override
  State<Block_Semantics> createState() => _Block_SemanticsState();
}

class _Block_SemanticsState extends State<Block_Semantics> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: SizedBox(
          width: 500,
          height: double.infinity,
          child: Column(
            children: [
              OutlinedButton(
                onPressed: () => setState(() {
                    isShow = true;
                }),
                child: Text("Click"),
              ),
              if(isShow)
              Card(
                color: Colors.orangeAccent,
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
