

import 'package:flutter/material.dart';

class Has extends StatelessWidget {
  const Has({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading:Icon(Icons.menu),
       title:Center(child: Text("hello")),
       actions: [
         Padding(

           padding: const EdgeInsets.all(8.0),
           child: Icon(Icons.search),
         ),
       ]


    ),
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){}, child: Text("hello")),
          SizedBox(height: 40,),
          Image.asset("assets/abc.jpeg"),
        ],
      ),

    );




  }
}



  
  

  
    

     
  
