import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navi extends StatefulWidget {
  const navi({super.key});

  @override
  State<navi> createState() => _naviState();
}

class _naviState extends State<navi> {
  List pages=[
    Center(child: Text("hi")),
   // yt1(),
    Center(child: Text("Profile")),
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
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: pages[cindex],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting"),
        BottomNavigationBarItem(icon: Icon(Icons.abc),label: "profile")
      ],
      onTap: tap,
      currentIndex: cindex,
      ),
    );
  }
}
