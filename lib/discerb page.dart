import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class watch extends StatefulWidget {
  const watch({super.key});

  @override
  State<watch> createState() => _watchState();
}
class _watchState extends State<watch> {
  String dropdoemvalue='item1';
  var items=[
    'item1',
    'iten2',
    'item3',
    'item4',
    'item5',
  ];
  List a=[
    "assets/wa.jpeg",
    "assets/abc.jpeg",
    "assets/xyz.jpeg",
    "assets/a1.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
          title:
             TextFormField(
              decoration: InputDecoration(

                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera),
                  hintText: "search Amazon .in"
              ),
            ),
      ),


      body:
         Column(
          children:[


              Padding(
                padding: const EdgeInsets.only(right: 260.0),
                child: Text("Visit the store",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.cyan)),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 150.0),
              child: RatingBar.builder(initialRating: 3,
               minRating: 1,
               direction: Axis.horizontal,
               allowHalfRating: true,
               itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
               itemBuilder: (context, _) => Icon(
              Icons.star,
               color: Colors.amber,
               ),
               onRatingUpdate: (rating) {
               print(rating);
              },
               ),
            ) ,

              Text("Acons & Premium Brand-A digital watch shockproof"
                    "Multi-funtional automatic 5 color army strp waterproof "
                    "digital sports watch for mens kids watch for boys watch for men pack of 1 ",
                style: TextStyle(fontSize: 20),),

            SizedBox(height: 1,),
              Stack(
                children: [
                  CarouselSlider.builder( options:CarouselOptions (
                        scrollDirection: Axis.horizontal,
                        height: 150.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16/9,
                        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                        itemCount: a.length,
                        itemBuilder: (BuildContext context,int index,int realIndex){
                        return
                          Container(
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage(a[index]),fit: BoxFit.fill,
                          )
                          ),
                          );
                        },

                      ),
                  Container(
                    height: 150,
                    width: 300,
                    child: Icon(Icons.share),
                    alignment: Alignment.topRight,
                  )
            ]

              ),
             TextFormField(),
                SizedBox(height: 10,),

               Padding(
                 padding: const EdgeInsets.only(right: 200.0),
                 child: Container(height: 40,width: 200,
                 decoration: BoxDecoration(color: Colors.red,
                  border: Border.all(),
                             ),
                   child: Text("Limited Time deal",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),
                   ),
                           ),
               ),
            Padding(
              padding: const EdgeInsets.only(right: 220.0),
              child: Text("-84% 325 RS",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280.0),
              child: Text("M.R.P.:1999 RS"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text("Inclusive of all taxes",style: TextStyle(fontSize: 20),),
            ),TextFormField(),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Text("Total:325 RS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Text("FREE delivey Thursday,25 April on oders dispatched by amazon over rs 499.Details"),
            Padding(
              padding: const EdgeInsets.only(right: 500.0),
              child: Icon(Icons.maps_home_work),
            ),Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text("Delivering to chennai 620012-update locatin"),
            ),

          Padding(
            padding: const EdgeInsets.only(right: 300.0),
            child: DropdownButton(value: dropdoemvalue,icon:Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(items),
                  ),
                );
              }).toList(),
              onChanged:(String? newvalue) {
                setState(() {
                  dropdoemvalue = newvalue!;
                });
              }
            ),
          ),

            ],

        ),
      );


  }

}
