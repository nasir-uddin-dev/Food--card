import 'package:flutter/material.dart';

import 'add_water_button.dart';

class Watertrackerker extends StatefulWidget {
  const Watertrackerker({super.key});

  @override
  State<Watertrackerker> createState() => _WatertrackerkerState();
}

class _WatertrackerkerState extends State<Watertrackerker> {
  int currentInTake = 0;
  final int goal = 5000;

  void waterAdd(int amount) {
    setState(() {
      currentInTake = (currentInTake + amount).clamp(0, goal);
    });
  }

  void resetTank(){
    setState(() {
      currentInTake = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    double progress = (currentInTake / goal).clamp(0, 1);
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        flexibleSpace: Container(decoration: BoxDecoration(color: Colors.blue)),
        title: Text(
          'Water Tracker',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(60),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(.2),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Today's InTank",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '${currentInTake} L TR',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            // 10% = 0.1  , 50% = 0.5
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey,
                    strokeWidth: 10,
                    value: progress,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  '${(progress * 100).toInt()}%',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 30),
            Wrap(
              spacing: 10,

              children: [
                addWaterButton(
                  amount: 100,
                  onClick: () => waterAdd(100),
                  icon: Icons.local_drink,
                ),
                addWaterButton(amount: 500, onClick: () => waterAdd(500)),
                addWaterButton(
                  amount: 1000,
                  onClick: () => waterAdd(1000),
                  icon: Icons.water_damage,
                ),
              ],
            ),

            SizedBox(height: 20),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  resetTank();
                },
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 24, color: Colors.blueAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
