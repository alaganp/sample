import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bmical extends StatefulWidget {
  const bmical({super.key});

  @override
  State<bmical> createState() => _bmicalState();
}

class _bmicalState extends State<bmical> {
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController c = TextEditingController();
  String value = '';

  void
  imb() {
    double wei = double.parse(a.text);
    double hei = double.parse(b.text);


    double bmi = wei / ((hei / 100) * (hei / 100));
    c.text = bmi.toStringAsFixed(2);

    setState(() {
      if (bmi < 18.5) {
        value = "underweight";
      }
      else if (bmi >= 18.5 && bmi <= 24.9) {
        value = "Normal weight";
      }
      else if (bmi >= 25 && bmi <= 29.9) {
        value = "overweight";
      }
      else if (bmi > 30) {
        value = "obesity";
      }
    });

}
  void button(){

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('BMI Cal'),
          content: Text(' BMI : $value'),

          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {

                });
                Navigator.of(context).pop();
              },
              child: Text('close'),
            ),
          ],
        );
      },
    );
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

        title: Text('BMI CALCULATOR',style: TextStyle(
          fontSize: 30
        ),),
      ),
      body: Column(children: [SizedBox(height: 50,),
        Row( mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
          Text('weight kg',style: TextStyle(fontSize: 30),),
          Container(height: 80,width: 180,
           child: TextFormField(controller: a,
          decoration:InputDecoration(border:OutlineInputBorder()),))
        ],
        ),SizedBox(height: 40,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text('height cm',style: TextStyle(fontSize: 30),),
          Container(height: 80,width: 180,
          child: TextFormField(controller: b,
          decoration: InputDecoration(border:OutlineInputBorder()),))
        ],),SizedBox(height:40 ,),
        ElevatedButton(onPressed: (){

            imb();
            button();
        }, child:Text('CALCULATE',
          style: TextStyle(fontSize: 20),
        )
        ),SizedBox(height:30 ,),
        Column(children: [

          Text("RESULTS",style: TextStyle(fontSize: 30),),
        ],
        ),SizedBox(height: 30,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text('BMI IS',style: TextStyle(fontSize: 30),),
          Container(height: 80,width: 180,
          child: TextFormField(controller: c,
          decoration:InputDecoration(border: OutlineInputBorder()),))
        ],),SizedBox(height: 40,),
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('final result',style: TextStyle(fontSize: 40),),
          ),
          Text('$value',style: TextStyle(fontSize: 30),),

        ],
        ),
      ],
      )
    );
  }
}

