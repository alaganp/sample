

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class spot extends StatefulWidget {
  const spot({super.key});

  @override
  State<spot> createState() => _spotState();
}

class _spotState extends State<spot> {
  late ScrollController scrollController;
  double imagesize=0;
  double initialsize=240;
  bool song=false;
  @override
  void initState(){
    imagesize=initialsize;
    scrollController=ScrollController()
    ..addListener(() {setState(() {
      song=scrollController.offset>0;
      imagesize=initialsize- scrollController.offset;
    });});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
          body:CustomScrollView(
            controller: scrollController,
              slivers: [
                SliverAppBar(
                  toolbarHeight: 50,
                  backgroundColor: Colors.pinkAccent[200],
                  floating: true,
                  pinned: true,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back,color: Colors.white,),
                    onPressed: (){},
                  ),
                  title: song? Text('AR Rahman',style: TextStyle(color: Colors.white)):null
                ),

                SliverToBoxAdapter(
                  child: Container(decoration: BoxDecoration(
                    gradient:LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,colors: [Colors.pinkAccent,Colors.black.withOpacity(1)]
                    )
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [Container(width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search),
                                hintText: "fint the paly list",

                              ),
                            ),

                            ),
                            SizedBox(width: 40,),
                            Container(width: 60,decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "sort",
                                ),
                              ),
                            )
                          ],),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(1),
                                blurRadius: 85,spreadRadius: 10,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 78.0),
                            child: Image(
                              image: AssetImage('assets/img_2.png'),
                              width: imagesize,height: imagesize,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('enna solla pogira',style: TextStyle(color: Colors.white),),
                        ),
                        SizedBox(height: 10,),Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Image(image: AssetImage('assets/abc.jpeg'),height: 30,width: 30,),
                          ),
                          SizedBox(width: 15,),Text("My favourities",
                          style: TextStyle(color: Colors.white),
                          ),
                        ],),
                        SizedBox(height: 10,),
                        Row(children: [
                          Icon(Icons.wallet,color: Colors.white),
                          Text('12,839',style: TextStyle(color: Colors.white),),
                        ],),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(image: AssetImage('assets/xyz.jpeg'),
                              height: 35,width: 35,),
                              Icon(Icons.add,size: 25,color: Colors.white,),
                              Icon(Icons.arrow_circle_down,
                              size: 20,color: Colors.white,
                              ),
                              Icon(Icons.more_vert,size: 20,color: Colors.white,),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 1.0),
                                child: Icon(Icons.shuffle,size: 25,color: Colors.white,),
                              ),
                              Icon(Icons.play_circle,size: 40,color: Colors.green,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  ),
                ),SliverList(delegate: SliverChildBuilderDelegate(
                    ( Context,index){
                      return Container(
                        width: double.infinity,
                        color: Colors.black,
                         child:ListTile(
                           leading: Image(image: AssetImage('assets/no2.jpeg'),width: 50,),
                           title: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text("sdfghjkl",style: TextStyle(color: Colors.white),),
                                   Text('sdfghjkl',style: TextStyle(color: Colors.white,fontSize: 20),)
                                 ],
                               ),
                               Icon(Icons.more_vert),
                             ],
                           ),
                         ) ,
                      );
                    },
                  childCount: 10,
                ))
              ],

          ),

        );

  }


}
