



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

 class value extends StatefulWidget {
   const value({super.key});

   @override
   State<value> createState() => _valueState();
 }

 class _valueState extends State<value> {
   TextEditingController text =TextEditingController();
   TextEditingController editIng =TextEditingController();

   List  a=[];

   void d() {


     int min = a.isNotEmpty ? a.reduce((curr, next) => curr < next ? curr : next) : 0;
     int max = a.isNotEmpty ? a.reduce((curr, next) => curr > next ? curr : next) : 0;
     showDialog(
       context: context,
       builder: (BuildContext context) {
         return AlertDialog(
           title: Text('Min Max Values'),
           content: Column(
             mainAxisSize: MainAxisSize.min,
             children: [
               Text('Min Value: $min'),
               Text('Max Value: $max'),
             ],
           ),
           actions: [

          TextButton(
             onPressed: () {
                 Navigator.of(context).pop();
               },
               child: Text('Close'),
             ),
           ],
         );
       },
     );
   }
   void e() {

       showModalBottomSheet(
         context: context,
         builder: (BuildContext context) {
          return Center(
             child: Container(
               height: 200,
               child: ListView.builder(
                   itemCount: a.length,
                   itemBuilder: (context,index){
                 return Text(a[index].toString());
               }),
             ),
           );
         },
       );
     }

   @override
   Widget build(BuildContext context) {
     return Scaffold(

       body: Column(children: [
       TextFormField(controller: text
         ),
     ElevatedButton(onPressed: () {
          setState(() {

            a.add(text.text);

           }
           );
         },
         child: Text('add')),


          

         ElevatedButton(onPressed: () {
           d();
         }, child: Text("ok")),
         ElevatedButton(onPressed: () {
           setState(() {
            a.sort();
             e();
           });
         }, child: Text("sort")),
         ElevatedButton(onPressed: () {
           setState(() {
             a.sort((b, a) => a.compareTo(b));
             e();
           });
         }, child: Text('reverse'
         ),),

         Container(height: 300, width: 300,
          decoration: BoxDecoration(border: Border.all(
               color: Colors.cyan
           ),
           ),

           child: ListView.builder(
             itemCount: a.length,
     itemBuilder: (BuildContext context, index) {
       return GestureDetector(
         onTap: () {
           Navigator.push(context,
               MaterialPageRoute(builder: (context) => view(pages: a[index])));
         },

          child: Container(
             height: 30,color: Colors.blue,
              


            child: Row(
              children: [
                Text(a[index],

                ),

              IconButton(onPressed:(){
                setState(() {
                  showDialog(context: context,
                      builder: (BuildContext context)=>AlertDialog(
                        title: Text("Edit"),
                          content: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter the text",
                            ),
                            controller: editIng,
                          ),
                         actions: [
                          TextButton(
                          onPressed: (){
                              setState(() {

                               });
                                  Navigator.of(context).pop();

                                   },
                                   child: Text("Cancel"),
                                 ),

                          ElevatedButton(onPressed: (){
                            setState(() {
                              a [index] =(editIng.text);
                            });
                          Navigator.of(context).pop();
                              editIng.clear();},
                              child: Text("OK"))
                          ]
                      ));
                });
              }, icon: Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Icon(Icons.edit),
              )),
                IconButton( onPressed:(){
                  setState(() {
                    a.removeAt(index);
                  });
                },
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 90.0),
                      child: const Icon(Icons.delete),
                    )),
              ],
            ),
          ),

       );
       }
       )
         ),
               ElevatedButton(onPressed: () {}, child: Text('show dialoge'
               ))

     ]
     )
     );




   }

   }

class view extends StatefulWidget {
   String pages;


   view({super.key,required this.pages});


  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(widget.pages)),
    );
  }
}




class asd extends StatefulWidget {
  const asd({super.key});

  @override
  State<asd> createState() => _asdState();
}

class _asdState extends State<asd> {


  List a = [];

  final ctrl =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(controller: ctrl,),
          ElevatedButton(onPressed: (){
            setState(() {
              a.add(ctrl.text);
            });
          }, child: Text("ok")),
          Container(
            height: 200,
            color: Colors.cyan,
            child: ListView.builder(
              itemCount: a.length,
                itemBuilder: (BuildContext context, index)
                    {
                      return GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ewq(data: a[index])));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 20,
                              color: Colors.red,
                              child: Text(a[index])),
                        ),
                      );
                    }
            ),

          ),
        ],
      ),
    );
  }
}



class ewq extends StatefulWidget {
  String data;
  ewq({super.key,required this.data});

  @override
  State<ewq> createState() => _ewqState();
}

class _ewqState extends State<ewq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(widget.data)),
    );
  }
}

