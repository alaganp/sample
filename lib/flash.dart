import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample/demoo.dart';
import 'package:sample/ott%203%20pages.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>homepages(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        body: Column(children: [
          Container(height: MediaQuery.of(context).size.height/1,
            width:  MediaQuery.of(context).size.width/1,
          decoration: BoxDecoration(
            image: DecorationImage(
            image  : AssetImage('assets/img_15.png'),fit: BoxFit.fill,
            )
          ),),
        ]),
      );






  }
}


