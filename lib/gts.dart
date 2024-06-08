import 'package:flutter/material.dart';

class GT extends StatelessWidget {
  const GT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(child: Text("GT")),
        title: Icon(Icons.home),
        actions: [
          Image.asset("assets/abc.jpeg")
        ],
        backgroundColor: Colors.blue,

      ),

      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(),
            // image: DecorationImage(
            //   image: AssetImage("abc.jpeg"),
            //
            //
            // )
          ),
          child: Column(
            children: [
              Container(
                height: 400,
                width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
               image: DecorationImage(
                image: AssetImage("abc.jpeg"),
              )
    ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail),
                    hintText: "had",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){}, child:Text("Login")),
            ],

          ),
          ),
        ),

    );
  }
}

















