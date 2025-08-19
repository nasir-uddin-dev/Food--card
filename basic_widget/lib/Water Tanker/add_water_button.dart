import 'package:flutter/material.dart';

class addWaterButton extends StatelessWidget {
  final int amount;
  IconData ? icon;
  final VoidCallback onClick;

  addWaterButton({
    super.key, required this.amount, required this.onClick, this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(25),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            iconSize: 25,
            iconColor: Colors.white,
          ),
          onPressed: onClick,
          icon: Icon( icon ?? Icons.water_drop),
          label: Text(
            '${amount} LTR',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}