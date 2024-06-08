import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sample/1.0.dart';
import 'package:sample/2.0.dart';
import 'package:sample/boo.dart';
import 'package:sample/gts.dart';
import 'package:sample/hh.dart';
import 'package:sample/rt.dart';
import 'package:sample/tn.dart';
import 'package:sample/zhh.dart';

class kl extends StatefulWidget {
  const kl({super.key});

@override
  State<kl> createState() => _klState();
}

class _klState extends State<kl> {
  List pages=[
    abs(),
    no3(),
    Qq()


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
        BottomNavigationBarItem(icon:Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting"),
        BottomNavigationBarItem(icon:Icon(Icons.person),label: "person"),

      ],
      onTap: tap,
        currentIndex: cindex,


      ),
    );
  }
}
