import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sample/hh.dart';
import 'package:sample/the1.dart';

class abs extends StatefulWidget {
  const abs({super.key});

  @override
  State<abs> createState() => _absState();
}

class _absState extends State<abs> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        title: Center(child: Text("GT"),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          TextFormField(),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => no3()),
            );
          }, child: Text("Welcome to GT")),
          Padding(
            padding:  EdgeInsets.only(right: 400,bottom:10,),
            child: SizedBox(height: 50,),
          ),
          Container(
            height:300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                image:AssetImage("assets/abc.jpeg"),fit:BoxFit.fill
              )
            ),
            child:Column(
              children: [
                SizedBox(height: 50,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Enter username"
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration:InputDecoration(
                      icon:Icon(Icons.password),
                      hintText: "Password"
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(onPressed: (){}, child:Text("Login")),
              ],
              )
          ),

          SizedBox(height: 30,),
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(left:55),
                child: SizedBox(height: 20,),
              ),
              Container(
                height:150,
                width:150,
                decoration:BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/abc.jpeg"),
                  )
                ),
                ),
              Padding(
                padding:  EdgeInsets.only(left: 10.0,bottom: 40.0),
                child: Column(
                  children: [
                    //SizedBox(height: 50,),
                    Container(height: 50,
                      width: 140,
                      decoration: BoxDecoration(border: Border.all()),
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText:"user name"
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){}, child:Text("login")),
                  ],
                ),
              )
    ]
    ),


    ],
    ),

    );
  }
}


