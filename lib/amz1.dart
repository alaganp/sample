import 'package:flutter/material.dart';
import 'package:sample/amazon.dart';
import 'package:sample/discerb%20page.dart';
class maz1 extends StatefulWidget {
  const maz1({super.key});

  @override
  State<maz1> createState() => _maz1State();
}

class _maz1State extends State<maz1> {
  List pages=[
    amz(),
    watch(),
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

      ],
        onTap: tap,
        currentIndex: cindex,
      ),
    );

  }
}
