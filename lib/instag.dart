import 'package:flutter/material.dart';
import 'package:sample/amazon.dart';
import 'package:sample/instagram.dart';
import 'package:sample/spotify.dart';
class yzz extends StatefulWidget {
  const yzz({super.key});

  @override
  State<yzz> createState() => _yzzState();
}

class _yzzState extends State<yzz> {
  List pages=[
    amz(),
    spot(),
    insta(),
  ];
  int cindex=0;
  void tap(index){
    setState(() {
      cindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: pages[cindex],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "peerson"),
      ],
        onTap: tap,
        currentIndex: cindex,
      ),
    );
  }
}
