import 'package:flutter/material.dart';

class are extends StatelessWidget {
  const are({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(child: Text("okk")),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
            ),
          ),
          SizedBox(height:34,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(),
          ),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){}, child: Text("any")),
          Container(
            width: 67,
            height: 87,
            child: Image.asset("assets/abc.jpeg"),


          )
        ],
      ),
    );

  }
}
