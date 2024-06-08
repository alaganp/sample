

import 'package:flutter/material.dart';
import 'package:sample/all%20type%20cal.dart';


class gstcal extends StatefulWidget {
  const gstcal({super.key});

  @override
  State<gstcal> createState() => _gstcalState();
}

class _gstcalState extends State<gstcal> {
TextEditingController a =TextEditingController();
TextEditingController b=TextEditingController();
TextEditingController c =TextEditingController();
TextEditingController d =TextEditingController();

void calgst (){
    double price = double.parse(a.text);
    double gst =double.parse(b.text);

    double excluding =price*(gst/100);
    double including = price-(price/(1+(gst/100)));

  //  double gstamount = price  * (gst/100);
    //double excluding = price *gstamount;
  //  double originalprice = (price/(1-gst/100));
   // double including = price - originalprice;



    a.text=toString();
    b.text=toString();
    c.text=including.toStringAsFixed(2);
    d.text=excluding.toStringAsFixed(2);


}


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
      ),

      body: Column(children: [
        Text('price'),
        TextFormField(
          controller:a
        ),
        SizedBox(height: 50,),
        Text('percentage'),
        TextFormField(
          controller:b,
        ),SizedBox(height: 40,),
        ElevatedButton(onPressed: (){
          setState(() {
            calgst();
          });
        },

            child:Text('calculator',style: TextStyle(fontSize: 20),) ),

        SizedBox(height: 100,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text('including',style: TextStyle(fontSize: 20),),
          Text('excluding',style: TextStyle(fontSize: 20),),
        ],
        ),Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
          Container(height:80,width: 170,
            child: TextFormField(
              controller: c,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),)
          ),
          Container(height: 80,width: 170,
          child: TextFormField(
            controller: d,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),)
          )
        ],)
        ],
      ),


      );



  }
}
