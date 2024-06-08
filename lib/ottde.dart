import 'package:flutter/material.dart';
import 'package:sample/palying.dart';
class ottdesc extends StatefulWidget {
  const ottdesc({super.key});

  @override
  State<ottdesc> createState() => _ottdescState();
}

class _ottdescState extends State<ottdesc> {

  List a=[
    "assets/img_8.png",
    "assets/dq.jpg",
    "assets/img_9.png",
    "assets/img_10.png",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:
         Column(children: [
          Container(height: MediaQuery.of(context).size.height/3.5,
            width: MediaQuery.of(context).size.width/1,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(1),
                blurRadius: 85,spreadRadius: 10,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:0.0),
            child: Image(
              image:AssetImage('assets/img_11.png'),

              fit: BoxFit.cover,
            ),
          ),
        ),SizedBox(height:1,),
          Row(children: [
            Text('John wick',style:Theme.of(context).textTheme.headlineSmall
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(':chapter 4',style:Theme.of(context).textTheme.headlineSmall ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:70.0),
              child: Icon(Icons.stars,color: Colors.orangeAccent,),
            ),
            Text('7.8/10',style: Theme.of(context).textTheme.headlineSmall,)
          ],),
        Row(children: [
          Container(height: MediaQuery.of(context).size.height/20,
            width: MediaQuery.of(context).size.width/4.5,
            decoration: BoxDecoration(
            border: Border.all(),borderRadius: BorderRadius.circular(15),
          ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('action',style: Theme.of(context).textTheme.headlineSmall),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: MediaQuery.of(context).size.height/20,
              width:MediaQuery.of(context).size.width/4.5,
              decoration: BoxDecoration(border:Border.all(),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('crime',style:Theme.of(context).textTheme.headlineSmall),
              ),
            ),
          ),
          Container(height: MediaQuery.of(context).size.height/20,
            width: MediaQuery.of(context).size.width/3,
            decoration: BoxDecoration(
            border: Border.all(),borderRadius: BorderRadius.circular(15),
          ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('2h 45min',style: Theme.of(context).textTheme.headlineSmall),
            ),
          ),
            ]
        ),
          Padding(
            padding: const EdgeInsets.only(right: 330.0),
            child: Text('About',style: Theme.of(context).textTheme.headlineSmall
            ),
          ),
          Text('john wick uncovers a path to defeating the high table.But before he can his freedom',
          style: Theme.of(context).textTheme.headlineSmall),
          Padding(
            padding: const EdgeInsets.only(right: 358.0),
            child: Text('Cast',style:Theme.of(context).textTheme.headlineSmall),
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height:MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width/4,
                decoration: BoxDecoration(border:Border.all(),
                  borderRadius: BorderRadius.circular(50),image: DecorationImage(
                    image: AssetImage('assets/img_12.png'),fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width/4,
                decoration: BoxDecoration(border:Border.all(),
                  borderRadius: BorderRadius.circular(50),image: DecorationImage(
                    image: AssetImage('assets/img_13.png'),fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width/4,
                decoration: BoxDecoration(border:Border.all(),
                  borderRadius: BorderRadius.circular(50),image: DecorationImage(
                    image: AssetImage('assets/img_14.png'),fit: BoxFit.fill,
                  ),
                ),
              ),
            ),


         ]
        ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 48.0),
              child: Text('bill',style:Theme.of(context).textTheme.headlineSmall),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 68.0),
              child: Text('yen',style: Theme.of(context).textTheme.headlineSmall
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 68.0),
              child: Text('donnie',style:Theme.of(context).textTheme.headlineSmall),
            ),
          ],
          ),SizedBox(height: 1,),
          Row(children: [
            Text('Recommended for you',style:Theme.of(context).textTheme.headlineSmall),
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Text('see all',style: Theme.of(context).textTheme.headlineSmall),
            )
          ],),
             Container(
              height: MediaQuery.of(context).size.height/6,
                   width: MediaQuery.of(context).size.width/0.5,
                   child: ListView.builder(scrollDirection: Axis.horizontal,
                    itemCount: a.length,
                    itemBuilder:(BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                       child: Container(
                       height: MediaQuery.of(context).size.height/3,
                       width: MediaQuery.of(context).size.width/3,
                       decoration: BoxDecoration(
                       image: DecorationImage(
                      image: AssetImage(a[index]),fit: BoxFit.fill
                        ),
                       ),
                     ),
                        );

                     }
              )
                  )
               ]
        ),
      ) ;


  }
}





