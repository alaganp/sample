import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class bmo extends StatelessWidget {
  const bmo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("GT"),
        ),
        title: Center(child: Icon(Icons.home,size: 40,)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/abc.jpeg"),
          ),
        ],

      ),
      body: Column(
        children: [

          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage("assets/abc.jpeg"),

              )
            ),
            child: Column(
              children: [
                ElevatedButton(onPressed: (){}, child:Text("Login"),
                ),
              ],
            ),

          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(

              decoration: InputDecoration(
                icon:Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.mail),
                hintText: "hi",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: (){}, child:Text("Login")),
        ],
      ),

    );
  }
}
