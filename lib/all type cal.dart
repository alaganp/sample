import 'package:flutter/material.dart';
import 'package:sample/BMI.dart';
import 'package:sample/GST%20c.dart';
import 'package:sample/cal.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  List pages=[
    oooo(),
    gstcal(),
    bmical(),
  ];
  int cindex=0;
  void tap(index) {
    setState(() {
      cindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[cindex],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "gst"),
        BottomNavigationBarItem(icon: Icon(Icons.abc),label: "bmi")
      ],
        onTap: tap,
        currentIndex: cindex,

      ),
    );
  }
}

