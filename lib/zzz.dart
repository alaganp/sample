import 'package:flutter/material.dart';
class ghh extends StatelessWidget {
  const ghh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.image),
        ),



        title: Center(child: Text("has"),),
        actions: [
          Icon(Icons.search),
          Icon(Icons.camera),
          Row(
            children: [
              Image.asset("assets/abc.jpeg"),
            ],
          ),


        ],
      ),
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: (){}, child:Text("none")),
          Container(
            width: 87,
            height: 56,
            child: Image.asset("assets/abc.jpeg"),

          ),
        ],
      ),

    );
  }
}
