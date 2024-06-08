import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample/login%20page.dart';

import 'authentication page.dart';
class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController d = TextEditingController();

  final c = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("LOGIN PAGE",style:TextStyle(color: Colors.blue,
          fontWeight: FontWeight.bold),),
      centerTitle: true,
    ),
        body:Form(
          key: c,
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),


                 Container(height: 70,width: 300,
                   child: TextFormField(
                    controller: d,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'name',
                    ),
                                   ),
                 ),

              Padding(padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,width: 300,
                  child: TextFormField(
                    controller: a,
                    keyboardType: TextInputType.name,
                    validator: (int){
                      if(int==null   || int.isEmpty){
                        return "Enter Valid Name";
                      }
                    },
                    decoration: InputDecoration(
                      border:OutlineInputBorder(),
                      hintText: "Email",
                    ),
                  ),
                ),
              ),SizedBox(height: 25,),
              Padding(padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,width: 300,
                  child: TextFormField(
                    controller: b,
                    validator: (input){
                      if(input==null  ||  input.isEmpty || input.length!=8)
                        return "Enter Valid Password";
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "password",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    ElevatedButton(onPressed: ()async{
                      final message = await AuthService().login(
                          email: a.text,
                          password: b.text
                      );

                      if(c.currentState!.validate()){
                        if (message!.contains("Success")){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => first()),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Successfully Logged In"))
                          );
                        }
                        else { ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Email Does Not Exist"))
                        );
                        } } },
                        child: Text("Login",style: TextStyle(fontSize: 30),)),
                    SizedBox(width: 15),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>first ()),
                      );
                    }, child: Text("Sign up",style: TextStyle(fontSize: 30),)),

                  ],
                ),
              )
            ],
          ),)


    );
  }
}
