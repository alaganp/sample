import 'package:flutter/material.dart';
class one extends StatefulWidget {
  const one({super.key});

  @override
  State<one> createState() => _oneState();
}


class _oneState extends State<one> {

  final validdd = GlobalKey<FormState>();

  TextEditingController password = TextEditingController();
  TextEditingController Repassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        body: Column(
          children: [SizedBox(height: 140,),
            Text('Create New Password',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
            color: Colors.white),),
            SizedBox(height: 30,),
      Padding(
        padding: const EdgeInsets.only(left:18.0),
        child: Container(height:  MediaQuery.of(context).size.height/19,
          width:  MediaQuery.of(context).size.width/1.2,

          child: TextFormField(
            controller: password,
            validator: (input){
              if(input == null || input.isEmpty){
                return "Please enter the password";
              }
            },
            decoration:const InputDecoration(
                hintText: "Password",


            ),
          ),
        ),
      ),SizedBox(height: 50,),
      Padding(
        padding: const EdgeInsets.only(left:18.0),
        child: Container(height:  MediaQuery.of(context).size.height/19,
          width:  MediaQuery.of(context).size.width/1.2,

          child: TextFormField(
            controller: Repassword,
            validator: (input){
              if(input == null || input.isEmpty){
                return "Please enter the password";
              }
            },
            obscureText: true,
            decoration:const InputDecoration(
                hintText: "Password",
              hintStyle: TextStyle(color: Colors.white,fontSize: 20),
            ),
          ),
        ),
      ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Container(height: 50,width: 330,
                child: ElevatedButton(onPressed: (){}, child: Text('Save',
                style: TextStyle(fontSize: 30),)),
              ),
            )
          ],
        ),
    );
  }
}
