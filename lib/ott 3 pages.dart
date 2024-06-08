import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample/alagan.dart';
import 'package:sample/demoo.dart';
import 'package:sample/ottde.dart';
import 'package:sample/palying.dart';
import 'package:sample/profile.dart';
import 'package:sample/video.dart';

class OTT extends StatefulWidget {
  const OTT({super.key});

  @override
  State<OTT> createState() => _OTTState();
}

class _OTTState extends State<OTT> {

List pages=[

  front(),


  profiles(),
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
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home",),


        BottomNavigationBarItem(icon: Icon(Icons.abc),label: "profile"),


      ],
        onTap: tap,
        currentIndex: cindex,
      ),
    );
  }
}
