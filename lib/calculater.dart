import 'package:flutter/material.dart';

class calculate extends StatefulWidget {
  const calculate({super.key})
  ;

  @override
  State<calculate> createState() => _calculateState();
}

class _calculateState extends State<calculate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.settings)],
      ),
      body: Column(children: [
        Container(height: 250,
        ),Row(children: [
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: Icon(Icons.lock_clock),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: Icon(Icons.calculate),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(Icons.money_off),
          ),
        ],),
        SizedBox(height: 5,),
        TextFormField(),

        Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
            borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('AC',
                style: TextStyle(fontSize: 20,color: Colors.blue),
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),child:ElevatedButton(onPressed: (){},child: Text('ex',
            style: TextStyle(fontSize:25,color: Colors.blue),
            ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),child: ElevatedButton(onPressed: (){},child: Text('+/-',
            style:TextStyle(fontSize: 18,color: Colors.blue),
            ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
              child: ElevatedButton(onPressed: (){},child: Text('-'
              ,style: TextStyle(fontSize: 50,color: Colors.blue),
              ),
              ),
             ),
            ),
        ],
        ),
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('7',
                  style: TextStyle(fontSize: 30),
                ),
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('8',
                  style: TextStyle(fontSize: 30),
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('9',
                  style: TextStyle(fontSize: 30),
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('^',
                  style: TextStyle(fontSize: 30,color: Colors.blue),
                ),)
            ),
          ),
        ],),
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('4',
                  style: TextStyle(fontSize: 30),
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('5',
                  style: TextStyle(fontSize: 30),
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('6',
                  style: TextStyle(fontSize: 30),
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('-',
                  style: TextStyle(fontSize: 30,color: Colors.blue),
                ),)
            ),
          ),
        ],),
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('1',
                  style: TextStyle(fontSize: 30),
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('2',
                  style: TextStyle(fontSize: 30),
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('3',
                  style: TextStyle(fontSize: 30),
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('+',
                  style: TextStyle(fontSize: 30,color: Colors.blue),
                ),)
            ),
          ),
        ],),
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('%',
                  style: TextStyle(fontSize: 30),
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('0',
                  style: TextStyle(fontSize: 30),
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('.',
                  style: TextStyle(fontSize: 30,),
                ),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:70 ,width:80,decoration: BoxDecoration(border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
                child:ElevatedButton(onPressed: (){},child: Text('=',
                  style: TextStyle(fontSize: 30,color: Colors.blue),
                ),),
            ),
          ),
        ],)
      ],
      ),

    );
  }
}

