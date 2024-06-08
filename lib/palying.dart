import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample/video.dart';
import 'package:video_player_android/video_player_android.dart';

class videopaly extends StatefulWidget {
  const videopaly({super.key});

  @override
  State<videopaly> createState() => _videopalyState();
}

class _videopalyState extends State<videopaly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              
              hintText: "searching",
          ),
        ),
      ),

      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 198.0),
          child: Text('Contine watching',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
          color: Colors.white
          ),),
        ),
       Column(children: [

        Container(height: 250,
        width: 412,decoration:BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img_11.png',
              ),fit: BoxFit.fill,
            )
          ),
        ),


           Icon(Icons.play_circle,size: 40,color: Colors.red,),
           Text('Watch now',style: TextStyle(fontSize:20,color: Colors.white ),),SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 100.0),
             child: Container(height: 30,width: 150,decoration: BoxDecoration(
               border: Border.all(),borderRadius: BorderRadius.circular(20),
             ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 5.0),
                 child: Text('Paly trailer 0:31',style: TextStyle(fontSize: 20,color: Colors.blue),),
               ),
             ),
           ),
      ],
      ),
         Padding(
           padding: const EdgeInsets.only(right: 288.0),
           child: Text('Suggested',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
           color: Colors.white
           ),),
         ),
         Column(children: [
           Row(children: [
             Container(height: 100,
               width: 170,decoration:BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage('assets/img_8.png',
                     ),fit: BoxFit.fill,
                   )
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(height: 200,
                 width: 200,decoration:BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage('assets/img_9.png',
                       ),fit: BoxFit.fill,
                     )
                 ),
                             ),
              ),
           ],
           ),SizedBox(height: 1,),

           Column(children: [Padding(
             padding: const EdgeInsets.only(right: 300),
             child: Text('Show case',style: TextStyle(fontSize: 20,color: Colors.white),),
           ),
             Padding(
               padding: const EdgeInsets.only(left: 98.0,),
               child: Text('Entourage',style: TextStyle(fontSize: 20,color: Colors.white),),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 250.0),
               child: Container(height: 150,
                 width: 200,decoration:BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage('assets/img_10.png',
                       ),fit: BoxFit.fill,
                     )
                 ),
               ),
             ),Padding(
               padding: const EdgeInsets.only(right: 288.0),
               child: Text('Boxsets',style: TextStyle(fontSize: 20,color: Colors.white),),
             )
           ],
           )
         ],
         )

    ]
    )

      );

  }
}











