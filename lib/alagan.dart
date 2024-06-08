



import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sample/ott%203%20pages.dart';


import 'package:sample/video.dart';
class front extends StatefulWidget {
  const front({super.key});

  @override
  State<front> createState() => _frontState();
}

class _frontState extends State<front> {

  late ScrollController scrollController;

  int currentPage = 0 ;
  List a=[
    "assets/img_8.png",
    "assets/dq.jpg",
    "assets/img_9.png",
    "assets/img_10.png",

  ];
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }


  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.light;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.toString()),
          actions: [
          Switch(
         value: isDarkMode,
         onChanged: (isOn) {
         isOn
        ? _toggleTheme(ThemeMode.dark)
        : _toggleTheme(ThemeMode.light);
         },
         ),
         ],
        ),

        body:

        Column(
            children: [ GestureDetector(
                onTap: () {
                  Navigator.pop(context); MaterialPageRoute(
                      builder: (context) => OTT());
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 408.0),
                  child: Icon(Icons.arrow_back, color: Colors.white,),
                )),
              CarouselSlider.builder(options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                height: 170.0,
                enlargeCenterPage: false,
                autoPlay: true,
                aspectRatio: 18 / 5,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                onPageChanged: (index,reason){
                  setState(() {
                    currentPage= index;
                  });
                },
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 1.0,
              ),
                itemCount: a.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return
                    Container(
                      height: MediaQuery.of(context).size.height/4,
                      width: MediaQuery.of(context).size.width/1,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(a[index]), fit: BoxFit.fill,
                          )
                      ),
                    );
                },


              ),DotsIndicator(
               dotsCount: a.length,
               position: currentPage.toInt(),
                decorator: DotsDecorator(
                color: Colors.white, // Inactive color
            activeColor: Colors.blue,
    ),
    ),
              SizedBox(height: 5),


              Text(
                'All        Originals       LiveTv       movies       Web series',
                style: Theme.of(context).textTheme.headlineSmall
                ),



              SizedBox(height: 10,),
              Row(children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SamplePlayer()));
                    },
                    child: Icon(
                      Icons.play_circle, size: 40, color: Colors.red,)),
                Text('Watch now',
                  style: TextStyle(fontSize: 20, color: Colors.black),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Container(
                    height:40,
                    width: 150,
                    decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text('Paly trailer 0:31',
                        style: TextStyle(fontSize: 20, color: Colors.blue),),
                    ),
                  ),
                ),
              ],
              ),
              Row(children: [
                Text("New Release",
                  style: Theme.of(context).textTheme.headlineSmall
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 80.0),
                  child: Text('See all',
                    style: TextStyle(
                        fontSize: 20, color: Colors.blue, fontWeight:
                    FontWeight.bold),),
                )
              ],),


              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SamplePlayer()));
                },
                child: Container(

                  height:MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width/1,
                  child: ListView.builder(scrollDirection: Axis.horizontal,
                    itemCount: a.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width/3,
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
              ), Padding(
                padding: const EdgeInsets.only(right
                    : 300.0),
                child: Text('suggested',
                  style: Theme.of(context).textTheme.headlineSmall
                ),
              ), GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SamplePlayer()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width/1,
                  child: ListView.builder(scrollDirection: Axis.horizontal,
                    itemCount: a.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height:MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width/3,
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
              ),


            ]
        )
    );
  }}