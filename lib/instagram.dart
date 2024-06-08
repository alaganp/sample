

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  List a=[
    'assets/abc.jpeg',
    'assets/xyz.jpeg',
    'assets/no2.jpeg',
    'assets/img_1.png',
    'assets/img.png',
    'assets/wb.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

           body: CustomScrollView(
               slivers: [
                SliverAppBar(
                title: Text('aahaan_aahaan'),
                actions: [
                  Icon(Icons.menu),
                ],
                ),
               SliverToBoxAdapter(
                child: Column(children: [
                 Container(height: 130,width: 400,
                 decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(children: [
                       Container(height: 100,width: 100,
                       decoration: BoxDecoration(border:Border.all(),borderRadius: BorderRadius.circular(50),
                       image: DecorationImage(
                         image: AssetImage('assets/xyz.jpeg'),fit: BoxFit.fill,
                       ),
                       ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 28.0),
                         child: Text('14.2K',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 28.0),
                         child: Text("121K",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 28.0),
                         child: Text('10',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),),
                       ),
                     ],),
                   ),
                   ),
                 SizedBox(height: 10,),
                 Padding(
                   padding: const EdgeInsets.only(right: 320.0),
                   child: Text('Aahaan',style: TextStyle(fontSize: 20),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 285.0),
                   child: Text('Just for fun',style: TextStyle(fontSize: 20,color: Colors.blue),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 150.0),
                   child: Text('Keep calm & say #Aahaan',style: TextStyle(fontSize: 20),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 270.0),
                   child: Text('#tamilmemes',style: TextStyle(fontSize: 20,color: Colors.blue),),
                 ),
                 Text('whatsapp.com/chennel/002va77zvsdss',style: TextStyle(fontSize: 20,
                 fontWeight: FontWeight.bold
                 ),),
                 SizedBox(height: 10,),
                 Row(children: [
                   Container(height: 50,width:140,
                   decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(15),
                     color: Colors.blue,
                   ),
                     child: Padding(
                       padding: const EdgeInsets.only(left: 25.0),
                       child: Text('Follow',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                     ),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20.0),
                     child: Container(height: 50,width: 150,
                     decoration: BoxDecoration(border: Border.all(),
                     borderRadius: BorderRadius.circular(15),
                     ),child: Padding(
                       padding: const EdgeInsets.only(left: 20.0),
                       child: Text('Subscribe',style: TextStyle(fontSize: 25,
                         ),),
                     ),
                     ),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 28.0),
                     child: Container(height: 50,width: 50,
                     decoration: BoxDecoration(border: Border.all(),
                     borderRadius: BorderRadius.circular(15),
                     ),
                       child:Icon(Icons.person),
                     ),
                   ),
                 ],
                 ),
                 SizedBox(height: 10,),
                 Row(children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(height: 80,width: 80,
                     decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(40),
                     image: DecorationImage(
                       image: AssetImage('assets/abc.jpeg'),fit: BoxFit.fill,
                     ),
                     ),
                       ),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(height: 80,width: 80,
                       decoration: BoxDecoration(border: Border.all(),
                       borderRadius: BorderRadius.circular(40),
                         image: DecorationImage(
                           image: AssetImage('assets/no2.jpeg'),fit: BoxFit.fill,
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(height: 80,width: 80,
                       decoration: BoxDecoration(border: Border.all(),
                         borderRadius: BorderRadius.circular(40),
                         image: DecorationImage(
                           image: AssetImage('assets/no2.jpeg'),fit: BoxFit.fill,
                         ),
                       ),
                                  ),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(height: 80,width: 80,
                       decoration: BoxDecoration(border: Border.all(),
                         borderRadius: BorderRadius.circular(40),
                         image: DecorationImage(
                           image: AssetImage('assets/no2.jpeg'),fit: BoxFit.fill,
                         ),
                       ),
                     ),
                   ),
                 ],
                 ),
                 SizedBox(height:1,),
                 Row(children: [
                     Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Text('music',style: TextStyle(fontSize:20),),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Text('memes',style: TextStyle(fontSize: 20),),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Text('memes',style: TextStyle(fontSize: 20),),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Text('memes',style: TextStyle(fontSize: 20),),
                     ),
                   ],),
                 SizedBox(height: 4,),
                 Container(height: 60,width: 400,
                   decoration: BoxDecoration(border: Border.all(color: Colors.white),
                   ),
                 child:

                 Container(height: 400,width: 400,
                 child: GridView.builder(
                   itemCount: a.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3,

                   ),
                   itemBuilder: (BuildContext context,int index){
                     return Column(
                       children: [
                         Container(height: 133,width: 400,
                           decoration: BoxDecoration(
                             border: Border.all(),
                             image: DecorationImage(
                               image: AssetImage(a[index]),fit: BoxFit.fill,
                             )

                           ),
                         )
                       ],
                     );
                   }
                 ),
                 )
               )],
               ),
                         ),
                       ],
                     ),
                 );








  }
}



class qwertyui extends StatefulWidget {
  const qwertyui({super.key});

  @override
  State<qwertyui> createState() => _qwertyuiState();
}

class _qwertyuiState extends State<qwertyui> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
                       SliverAppBar(
                        flexibleSpace: FlexibleSpaceBar(
                          background: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:48.0,left: 5),
                              child: Container(height: 100,width: 400,
                                decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0,left: 10,top:8),
                                  child: Container(height: 100,width: 80,
                                  decoration:BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(80),
                                  image: DecorationImage(
                                    image: AssetImage("assets/xyz.jpeg"),fit: BoxFit.fill,
                                  ),
                                  ) ,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0,left: 10),
                                  child: Text('14.2K',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0,left: 20),
                                  child: Text('121K',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0,left: 30),
                                  child: Text('10',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ),

                              ],
                              ),
                               
                              ),
                            ),
                            Text('Aahaan',style: TextStyle(fontSize: 20),),
                            Text('Just for fun',style: TextStyle(fontSize: 20),),
                            Text('Keep calm & say # Aahaan',style: TextStyle(fontSize: 20),),
                            Text('# tamilmemes'),
                            Text('whatsapp.com/fsdfs',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Row(children: [
                              Container(height: 50,width: 150,decoration: BoxDecoration(
                                border: Border.all(),borderRadius: BorderRadius.circular(20),
                              ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 28.0),
                                  child: Text('Follow',style: TextStyle(fontSize: 25),),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(height: 50,width: 150,
                                decoration: BoxDecoration(border:Border.all(),
                                borderRadius: BorderRadius.circular(20),
                                ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 28.0),
                                    child: Text('Subscribe',style: TextStyle(fontSize: 25),),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(height: 50,width: 50,
                                  decoration: BoxDecoration(border: Border.all(),
                                  borderRadius: BorderRadius.circular(20)),
                                  child: Icon(Icons.person),
                                ),
                              )
                            ],
                            ),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(height: 100,width: 100,
                                decoration: BoxDecoration(border:Border.all(),
                                borderRadius: BorderRadius.circular(50),image: DecorationImage(
                                      image: AssetImage('assets/abc.jpeg'),fit: BoxFit.fill,
                                    ),
                                ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(height: 100,width: 100,
                                  decoration: BoxDecoration(border:Border.all(),
                                    borderRadius: BorderRadius.circular(50),image: DecorationImage(
                                      image: AssetImage('assets/abc.jpeg'),fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Container(height: 100,width: 100,
                                decoration: BoxDecoration(border:Border.all(),
                                  borderRadius: BorderRadius.circular(50),image: DecorationImage(
                                    image: AssetImage('assets/abc.jpeg'),fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],)
                             ],
                          ),
                          ),


                        backgroundColor: Colors.blue,
                        expandedHeight: 500,
                        title: Text('Aahaan'),
                        actions: [
                          Icon(Icons.menu),
                        ],

                        bottom:
                            TabBar(tabs: [
                              Tab(icon: Icon(Icons.ice_skating),),
                              Tab(icon: Icon(Icons.ice_skating),)
                            ],
                            ),

                        ),
                       
           ];
          },
          body: TabBarView(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                ),


              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ],
          ),

    ));

  }
}
