import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class no3 extends StatelessWidget {
  const no3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(      appBar: AppBar(
      leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)),
    ),

      body: Container(
        height: 600,
        width: 400,
        decoration: BoxDecoration(
          border: Border.all(),
          image: DecorationImage(
            image: AssetImage("assets/xyz.jpeg"),fit: BoxFit.fill,
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage("assets/abc.jpeg"),fit: BoxFit.fill,
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 50,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 110,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                          image:DecorationImage(
                            image: AssetImage("assets/xyz.jpeg"),fit: BoxFit.fill,
                          ),
                        ),

                      ),
                      Text("abc"),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child:Column(
                    children: [
                      Container(
                        height: 110,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius:BorderRadius.only(topRight:Radius.circular(40),topLeft: Radius.circular(40),),
                          image: DecorationImage(
                            image: AssetImage("assets/xyz.jpeg"),fit:BoxFit.fill,
                          )
                          ),
                        ),
                      Text("abc"),
                    ],
                  ),
                )
              ],
            ),

                        Padding(
                          padding: const EdgeInsets.only(top: 68.0),
                          child:
                           Container(
                            height: 500,
                            width: 370,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/xyz.jpeg"),fit: BoxFit.fill,
                              ),
                            ),
                            child: ClipRRect(
                              child:BackdropFilter(filter:ImageFilter.blur(sigmaY:10,sigmaX: 10) ,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(height: 30,),
                                    ),

                                       Container(
                                        height: 300,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          image: DecorationImage(
                                            image: AssetImage("assets/xyz.jpeg"),fit: BoxFit.fill
                                          )
                                        ),
                                      ),

                                    Column(
                                      children: [
                                        SizedBox(height: 100,),
                                        Container(
                                          width: 150,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              icon: Icon(Icons.person),
                                              hintText: "entre"
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(height: 50,),
                                            Container(
                                              height: 120,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                borderRadius: BorderRadius.circular(60),
                                              ),
                                              child: Column(
                                                children: [
                                                  SizedBox(height: 40,),
                                                  ElevatedButton(onPressed: (){}, child:Text("Login")
                                                  ),
                                                ],
                                              ),
                                              ),
                                          ],
                                        ),
                                          ],
                                        ),
                                  ],

                                ),
                              ),
                            ),

                                               ),
                          ),



      ],
        ),

              ),

    );


  }
}


class qw extends StatelessWidget {
  const qw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img.png"),
                )
              ),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),
                
                    child: Center(child: Text("ok"))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
