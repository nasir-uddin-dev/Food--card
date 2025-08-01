
import 'package:basic_widget/container_column_elevatedbutton_textfield/body_section.dart';
import 'package:basic_widget/stack_alertdialogue_form/stack_alertdialogue_form.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  get backgroundColor => null;


  int currentIndex = 0;
  List<Widget> screens = [
    StackAlertdialogueForm(),
    BodySection(),
    Center(
      child: Text("Notification"),
    ),

    Center(
      child: Text("Profile"),
    )

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: screens[currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 3, 99, 254),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          // ignore: deprecated_member_use
          unselectedItemColor: Colors.white.withOpacity(.5),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          iconSize: 35,
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            setState(() {
              
            }
          );
          },
          
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.library_music), label: "Library"),
          BottomNavigationBarItem(icon: Icon(Icons.notification_add), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ]
      ),
    );
  }
}