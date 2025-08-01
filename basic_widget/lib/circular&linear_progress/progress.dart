import 'package:flutter/material.dart';

class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: CircularProgressIndicator(
                  color: Colors.green,
                  strokeWidth: 5,
                  value: .8,
                  backgroundColor: Colors.grey.withOpacity(.5),
                ),
              ),
              SizedBox(height: 20),
              LinearProgressIndicator(
                color: Colors.red,
                minHeight: 10,
                borderRadius: BorderRadius.circular(10),
                value: .6,
              ),

              RefreshProgressIndicator(),
              SizedBox(height: 20),
              Switch(
                value: isOn,
                onChanged: (value) {
                  isOn = !isOn;
                  setState(() {
                    
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
