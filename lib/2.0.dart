import 'package:flutter/material.dart';
class no2 extends StatelessWidget {
  const no2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 400,
        decoration: BoxDecoration(
          border: Border.all(),
          image:DecorationImage(
            image:AssetImage("assets/abc.jpeg"),fit:BoxFit.fill
          )
        ),
        child: Column(
          children: [
            SizedBox(height:30,),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image:AssetImage("assets/abc.jpeg"),fit: BoxFit.fill
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 200,),
                Container(
                  height: 180,
                  width: 180,
                  decoration:BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(40),
                    // image: DecorationImage(
                    //   image: AssetImage("assets/abc.jpeg"),fit:BoxFit.fill,
                    // ),
                  ),
                  child: Column(
                    children: [
                      Container(
                          height: 140,
                          width: 180,
                          decoration:BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight:Radius.circular(40) ),
                            image: DecorationImage(
                              image: AssetImage("assets/abc.jpeg"),fit:BoxFit.fill,
                            ),
                          ),
                          //child: Image.asset("assets/abc.jpeg")
                      ),
                      Text("ok"),
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(40),

                    ),

                  child: Column(
                    children: [

                      Container(
                        height: 140,
                        
                          decoration:BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40),),
                                image: DecorationImage(
                                  image: AssetImage("assets/abc.jpeg"),fit: BoxFit.fill,

                                )
                          )




                      ),
                      Text("ok"),
                    ],
                  ),
                    ),
              ],
            ),

            Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all()
              ),
              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(height: 10,),
                  ),
                  Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                            image: AssetImage("assets/abc.jpeg"),fit: BoxFit.fill
                        )
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height:100,),
                      Container(
                        width:150,
                        child: TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              hintText: "enter"
                          ),
                        ),
                      ),
                      Column(

                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]

          ),
      ),

    );


  }
}







