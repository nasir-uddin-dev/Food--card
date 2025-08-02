import 'package:flutter/material.dart';

class Auto_Complete extends StatelessWidget {
  Auto_Complete({super.key});

  List<String> list_items = [
    'allah',
    'azan',
    'al_quran',
    'bismillah',
    'bakara',
    'chocolate',
    'duniya',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Autocomplete(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text.isEmpty) {
            return Iterable<String>.empty();
          }
          return list_items.where(
            (item) => item.toLowerCase().contains(
              textEditingValue.text.toLowerCase(),
            ),
          );
        },
        onSelected: (String item){
          print('The $item was selected');
        },
      ),
    );
  }
}
