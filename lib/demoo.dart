import 'package:flutter/material.dart';
import 'package:sample/alagan.dart';
import 'package:sample/login%20page.dart';
import 'package:sample/ott%203%20pages.dart';
import 'package:sample/sign%20in.dart';
class homepages extends StatefulWidget {
  const homepages({super.key});

  @override
  State<homepages> createState() => _homepagesState();
}

class _homepagesState extends State<homepages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [
        Container(height: MediaQuery.of(context).size.height/3,
          width: MediaQuery.of(context).size.width/1,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(1),
                blurRadius: 85,spreadRadius: 10,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Image(
              image:AssetImage('assets/img1.jpg'),

              fit: BoxFit.cover,
            ),
          ),
        ),SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text('watch unlimited movies, series & TV shows anytime,anywhere & anyway'
          ,style:Theme.of(context).textTheme.headlineSmall ),
        ),
        SizedBox(height: 100,),
        ElevatedButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => signin()),);
        }, child: Text('LOGIN & Subscribe',style: TextStyle(
          fontSize: 30
        ),
        ),
        ),
        SizedBox(height: 60,),
        Container(
          height: 80,width: 300,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.white,),
          ),
          child:ElevatedButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OTT()),);
          },child: Text('Try as guest!',
            style: TextStyle(fontSize: 30,color: Colors.blue),
          ),),
        ),

      ],
      ) ,
    );
  }
}


