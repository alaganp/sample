
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class amz extends StatefulWidget {
  const amz({super.key});

  @override
  State<amz> createState() => _amzState();
}

class _amzState extends State<amz> {

  List a=[
    "assets/no2.jpeg",
    "assets/abc.jpeg",
    "assets/xyz.jpeg",
    "assets/a1.jpeg",

  ];

  List b= [
    "mobile accessories",
    "toys",
    "lifebstyle",
    "amazon fresh",
  ];
  List c=[
    "bazaar",
    "toys",
    "fresh",
    "minitv",
    "deals",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        backgroundColor: Colors.cyan,
        title: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.camera),
              hintText: "search Amazon .in"
          ),
        ),
      ),

      body: Column(children: [
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.maps_home_work_sharp),
              hintText: "Delivering to coimbatore 641015"
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height: 100,
          width: 380,
          child: ListView.builder(scrollDirection: Axis.horizontal,
            itemCount: a.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(a[index]), fit: BoxFit.fill
                    ),
                  ),
                ),
              );
            },

          ),
        ),
        SizedBox(height: 40,),
        CarouselSlider.builder(options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
          itemCount: a.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Container(
              height: 50,
              width: 800,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(a[index]), fit: BoxFit.fill,
                  )
              ),
            );
          },
        ),
        SizedBox(height: 10,),
        Text("Products you may like", style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold,
        ),


        ),


        Container(
          width: 300,
          height: 300,
          child: GridView.builder(
              itemCount: a.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
              ),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                    children: [
                      Container(
                        height: 100,
                        width: 400,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                                image: AssetImage(a[index]), fit: BoxFit.fill)),
                      ),
                      Text(b[index]),

                    ]);
              }),
        ),
      ]),

    );
  }}
