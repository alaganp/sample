import 'package:flutter/material.dart';

class Qq extends StatefulWidget {
  const Qq({super.key});

  @override
  State<Qq> createState() => _QqState();
}

class _QqState extends State<Qq> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Icon(Icons.arrow_back)),
        ),

        title: Center(child: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text
            ("Report",style: TextStyle(fontSize: 30),),
        ),),
        actions: [Icon(Icons.home,size: 40,),
        ],

      ),
            body: Center(
              child: Column(
                  children:[
                    SizedBox(height: 50,),
                    Padding(
                      padding:EdgeInsets.only(right: 280.0),
                      child: Text("Report",style: TextStyle(fontSize: 25),),
                    ),
                    Container(child: ListView(
                      children: const[
                        ListTile(
                          leading: Icon(Icons.password),
                          title: Text('feedback',
                             style: TextStyle(
                               fontSize: 25
                             ),
                          ),
                          trailing: Icon(Icons.exit_to_app),
                        ),
                      ],

                    ),
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.cyan
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                      child: ListView(
                        children: const[
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Attendance',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          trailing: Icon(Icons.exit_to_app),
                        ),
                        ],

                      ),
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.blue
                      ),
                    ),
                    SizedBox(height: 70,),
                    Padding(
                      padding:  EdgeInsets.only(right: 280.0),
                      child: Text("manu",style: TextStyle(
                        fontSize: 25
                      ),),
                    ),
                    Container(child: ListView(
                      children: const[
                        ListTile(
                          leading: Icon(Icons.logout),
                          title: Text("Logout",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          trailing: Icon(Icons.exit_to_app),
                        ),
                      ],

                    ),
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.greenAccent
                      ),
                    )
                  ],
                ),
            ),
    );
  }
}




