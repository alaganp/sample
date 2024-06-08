import 'package:flutter/material.dart';

import 'navigation.dart';
class loginn extends StatefulWidget {
  const loginn({super.key});

  @override
  State<loginn> createState() => _loginnState();
}

class _loginnState extends State<loginn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navi()),
            );
          }, child: Text("OK"))
        ],
      ),
    );
  }
}
