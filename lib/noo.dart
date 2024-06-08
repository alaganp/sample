import 'package:flutter/material.dart';
class way extends StatelessWidget {
  const way({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Row(
          children:[

            Image.asset("assets/abc.jpeg"),

          ],
        ),





        title: Center(child: Text("DOG")),
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
            child: TextFormField(),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(),
          ),
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.all(8.0),

            child: ElevatedButton(onPressed: (){}, child: Text("noo")),

          ),
          Image.asset("assets/abc.jpeg")
        ],

      ),
    );
  }
}
