import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  List a=[
    "assets/abc.jpeg",
    "assets/xyz.jpeg",
    "assets/img.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            children: [
              CarouselSlider.builder( options: CarouselOptions(
                scrollDirection: Axis.vertical,
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
                itemCount:a.length,

                itemBuilder: (BuildContext context, int index, int realIndex)
              {
                return Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill)
                  ),
                );
              },  ),
              Container(
                height: 100,
                width: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: a.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(a[index]),fit: BoxFit.fill)
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 400,
                child: GridView.builder(
                  itemCount: a.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10
                    ),
                    itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                        image: AssetImage(a[index]),fit: BoxFit.fill)),
                  );
                }),
              ),
            ],
          ),
    );
  }
}
