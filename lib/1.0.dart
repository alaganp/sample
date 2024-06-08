import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class no1 extends StatelessWidget {
  const no1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left:400.0),
            child: SizedBox(height: 30,),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage("assets/abc.jpeg"),fit: BoxFit.fill
              )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(
                height:180,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/abc.jpeg"),fit: BoxFit.fill
                  ),
    )
    ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image:DecorationImage(
                              image: AssetImage("assets/abc.jpeg"),fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image:DecorationImage(
                              image: AssetImage("assets/abc.jpeg"),fit: BoxFit.fill
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image:DecorationImage(
                              image: AssetImage("assets/abc.jpeg"),fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image:DecorationImage(
                              image: AssetImage("assets/abc.jpeg"),fit: BoxFit.fill
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

    ],
    ),
          SizedBox(height: 100,),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all()
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("assets/abc.jpeg"),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 50,),
                    Container(
                      width: 150,
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: "user name"
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    ElevatedButton(onPressed: (){}, child:Text("Login"))
                  ],
                ),
              ],
            ),
          ),

  ],

      ));
  }
}




