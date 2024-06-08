import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class mad extends StatelessWidget {
  const mad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(child: Text("noo")),
        title: Icon(Icons.label),
        actions: [
          Image.asset("assets/abc.jpeg"),

        ],
        backgroundColor:Colors.greenAccent,
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration:BoxDecoration(
            border: Border.all(),
          ),
          child: Column(
            children: [
              Container(
                height: 300,
                width: 300,
               // decoration: Decoration(

                ),
            ],
          ),
        ),
      ),
    );
  }
}
