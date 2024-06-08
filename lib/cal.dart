import 'dart:math';


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample/BMI.dart';

class oooo extends StatefulWidget {
  const oooo({super.key});

  @override
  State<oooo> createState() => _ooooState();
}

class _ooooState extends State<oooo> {
  final _Controller = TextEditingController();

  String val1="",val2="",
      optr="";
  bool clk = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading:
    ElevatedButton(onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => bmical()),
      );
    }, child: Text('>'),),
    ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextFormField(style: TextStyle(fontSize: 30),
            controller: _Controller,
          ),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ElevatedButton(
              onPressed: (){
              setState(() {
                if(clk)
                  {
                    val2+= "1";
                    _Controller.text =val2;

                  }
                else
                  {
                    val1 += "1";
                    _Controller.text =val1;

                  }
              });
            },child: Text('1',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),),
            ElevatedButton(onPressed: (){
              setState(() {
                if(clk)
                {
                  val2 += "2";
                  _Controller.text =val2;

                }
                else
                {
                  val1 += "2";
                  _Controller.text =val1;

                }
              });
            },child: Text('2',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    if(clk)
                    {
                      val2 += "3";
                      _Controller.text =val2;
                    }
                    else
                    {
                      val1 += "3";
                      _Controller.text =val1;
                    }
                  });
                },child: Text('3',
                style: TextStyle(fontSize: 50,color: Colors.blue),
              ),),
              ElevatedButton(onPressed: (){
                setState(() {
                  _Controller.text ="+";
                  optr ="+";
                  clk = true;
                });
              },child: Text('+',
                style: TextStyle(fontSize: 50,color: Colors.blue),
              ),),
          ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ElevatedButton(
              onPressed: (){
                setState(() {
                  if(clk)
                  {
                    val2 += "4";
                    _Controller.text =val2;
                  }
                  else
                  {
                    val1 += "4";
                    _Controller.text =val1;
                  }
                });
              },child: Text('4',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),),

                   ElevatedButton(
                      onPressed: (){
                    setState(() {
                    if(clk){
                     val2 += "5";
                     _Controller.text =val2;
                     }
                        else
                      {
                     val1 += "5";
                    _Controller.text =val1;
                     }
                        });
                     },child: Text('5',
                    style: TextStyle(fontSize: 50,color: Colors.blue),
                     ),),
              ElevatedButton(onPressed: (){
                setState(() {
                  if(clk)
                  {
                    val2 += "6";
                    _Controller.text =val2;

                  }
                  else
                  {
                    val1 += "6";
                    _Controller.text =val1;

                  }
                });
              },child: Text('6',
                style: TextStyle(fontSize: 50,color: Colors.blue),
              ),),
              ElevatedButton(onPressed: (){
                setState(() {
                  _Controller.text ="-";
                  optr ="-";
                  clk = true;
                });
              },child: Text('-',
                style: TextStyle(fontSize: 50,color: Colors.blue),
              ),),
          ],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ElevatedButton(
              onPressed: (){
                setState(() {
                  if(clk=false)
                  {
                    val2 += "7";
                    _Controller.text =val2;
                  }
                  else
                  {
                    val1 += "7";
                    _Controller.text =val1;
                  }
                });
              },child: Text('7',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),), ElevatedButton(
              onPressed: (){
                setState(() {
                  if(clk)
                  {
                    val2 += "8";
                    _Controller.text =val2;
                  }
                  else
                  {
                    val1 += "8";
                    _Controller.text =val1;
                  }
                });
              },child: Text('8',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  if(clk)
                  {
                    val2 += "9";
                    _Controller.text =val2;
                  }
                  else
                  {
                    val1 += "9";
                    _Controller.text =val1;
                  }
                });
              },child: Text('9',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),),
              ElevatedButton(onPressed: (){
                setState(() {
                  _Controller.text ="*";
                  optr ="*";
                  clk = true;
                });
              },child: Text('*',
                style: TextStyle(fontSize: 50,color: Colors.blue),
              ),),
          ],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    if(clk)
                    {
                      val2 += "0";
                      _Controller.text =val2;
                    }
                    else
                    {
                      val1 += "0";
                      _Controller.text =val1;
                    }
                  });
                },child: Text('0',
                style: TextStyle(fontSize: 50,color: Colors.blue),
              ),),
            ElevatedButton(onPressed: (){
              setState(() {
                _Controller.text ="%";
                optr ="%";
                clk = true;
              });
            },child: Text('%',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),),
            ElevatedButton(onPressed: (){
              setState(() {
                _Controller.text ="/";
                optr ="/";
                clk = true;
              });
            },child: Text('/',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),),
              ElevatedButton(onPressed: (){
                double a = double.parse(val1);
                double b= double.parse(val2);
                double? res=0;
                if(optr == "+")
                {
                  res=a+b;
                }
                else if(optr == "-"){
                  res = a-b;
                }
                else if(optr=="*") {
                  res = a * b;
                }
                else if(optr=="%"){
                    res= a*b/100;
                }
                  else  if(optr=="✓"){double a= double.parse(val2);
                    res = pow(a,1/2) as double?;
                  }
                  else if (optr=="^²"){double a=double.parse(val2);
                    res =a*a;
                }
                   else if(optr=="+/-"){double a=double.parse(val1);
                     res =-a;
                }
                   else if (optr=="|") {
                  res =a-b/a*b.floorToDouble();
                }


                     _Controller.text = res.toString();
                val1=_Controller.text;
                val2="";

              },child: Text('=',
                style: TextStyle(fontSize: 50,color: Colors.blue),
              ),),
          ],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ElevatedButton(onPressed: (){
              setState(() {
                _Controller.text ="Ac";

                val1="";val2="";optr="";
                clk = false;
              });
            },child: Text('AC',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),),

            ElevatedButton(onPressed: (){
              double a = double.parse(_Controller.text);
              if (a.isNegative) {
                 _Controller.text = a.abs().toString();

              }
              else {
                _Controller.text = (a*-1).toString();

              }

            },child: Text('+/-',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),),
            ElevatedButton(onPressed: (){
              setState(() {
                if(clk)
                {
                  val2 += ".";
                  _Controller.text =val2;
                }
                else
                {
                  val1 += ".";
                  _Controller.text =val1;
                }
              });
            },child: Text('.',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),),
          ],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ElevatedButton(onPressed: (){
              setState(() {
                _Controller.text ="^²";
                optr ="^²";
                clk = true;
              });
            },child: Text('^²',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),),
              ElevatedButton(onPressed: (){
                _Controller.text = "✓";
                optr = "✓";
                clk=true;

              },child: Text('✓',
                style: TextStyle(fontSize: 50,color: Colors.blue),
              ),),
              ElevatedButton(onPressed: (){
                setState(() {
                  _Controller.text = "|";
                  optr = "|";
                  clk = true;
                });
              },child: Text('mod',
                style: TextStyle(fontSize: 40,color: Colors.blue),
              ),)
          ],)
        ],
      ),
    );
  }
}