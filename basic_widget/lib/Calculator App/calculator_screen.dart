import 'package:basic_widget/Calculator%20App/widgetButton.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = '0';
  String _input = '0';
  String _operator = ' ';
  double num1 = 0;
  double num2 = 0;

  void buildButton(String value) {
    //print('int value = $value');
    setState(() {
      if (value == 'C') {
        _output = '0';
        _input = '0';
        _operator = ' ';
        num1 = 0;
        num2 = 0;
      } else if (value == '=') {
        num2 = double.parse(_input);
        if (_operator == '+') {
          _output = (num1 + num2).toString();
        } else if (_operator == '-') {
          _output = (num1 - num2).toString();
        } else if (_operator == '*') {
          _output = (num1 * num2).toString();
        } else if (_operator == '/') {
          _output = num2 != 0
              ? (num1 / num2).toString()
              : 'Cannot divide by zero';
        }
      } else if (['+', '-', '*', '/'].contains(value)) {
        num1 = double.parse(_input);
        _operator = value;
        _input = ' ';
      } else {
        if (_input == '0') {
          _input = value;
        } else {
          _input += value;
        }
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (_operator.isNotEmpty && _input.isNotEmpty)
                    Text(
                      '$num1 $_operator $num2 ',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  SizedBox(height: 10,),
                  Text(
                    _output,
                    style: TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Row(
            children: [
              widgetButton(
                text: 'C',
                color: Colors.grey[800],
                onClick: () => buildButton('C'),
              ),
              widgetButton(
                text: '^',
                color: Colors.grey[800],
                onClick: () => buildButton('^'),
              ),
              widgetButton(
                text: '%',
                color: Colors.grey[800],
                onClick: () => buildButton('%'),
              ),
              widgetButton(
                text: '/',
                color: Colors.orange,
                onClick: () => buildButton('/'),
              ),
            ],
          ),
          Row(
            children: [
              widgetButton(text: '7', onClick: () => buildButton('7')),
              widgetButton(text: '8', onClick: () => buildButton('8')),
              widgetButton(text: '9', onClick: () => buildButton('9')),
              widgetButton(
                text: '*',
                color: Colors.orange,
                onClick: () => buildButton('*'),
              ),
            ],
          ),
          Row(
            children: [
              widgetButton(text: '4', onClick: () => buildButton('4')),
              widgetButton(text: '5', onClick: () => buildButton('5')),
              widgetButton(text: '6', onClick: () => buildButton('6')),
              widgetButton(
                text: '-',
                color: Colors.orange,
                onClick: () => buildButton('-'),
              ),
            ],
          ),
          Row(
            children: [
              widgetButton(text: '1', onClick: () => buildButton('1')),
              widgetButton(text: '2', onClick: () => buildButton('2')),
              widgetButton(text: '3', onClick: () => buildButton('3')),
              widgetButton(
                text: '+',
                color: Colors.orange,
                onClick: () => buildButton('+'),
              ),
            ],
          ),
          Row(
            children: [
              widgetButton(
                text: '0',
                color: Colors.grey[800],
                onClick: () => buildButton('0'),
              ),
              widgetButton(
                text: '.',
                color: Colors.grey[800],
                onClick: () => buildButton('.'),
              ),
              widgetButton(
                text: '=',
                color: Colors.orange,
                onClick: () => buildButton('='),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
