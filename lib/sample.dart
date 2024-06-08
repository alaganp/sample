import 'package:flutter/material.dart';
class sampe extends StatelessWidget {
  const sampe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.home,color: Colors.amberAccent,size: 20,),
        title: Center(
          child: Text("Welcome",
            style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold),),
        ),
        actions: [
          Icon(Icons.mail,color: Colors.yellowAccent,size: 20,)
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding:  EdgeInsets.only(left: 20.0),
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
                //color: Colors.yellowAccent
                image: DecorationImage(
                    image: AssetImage("assets/abc.jpeg"),fit: BoxFit.fill)
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.abc),
              labelText: "Enter the name",
                hintText: "Enter Name",
            ),
          )
        ],
      ),
    );
  }
}
