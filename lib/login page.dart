import 'package:flutter/material.dart';
import 'package:sample/alagan.dart';
import 'package:sample/ott%203%20pages.dart';

import 'authentication page.dart';
class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final qwe = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Form(key:qwe,child:Column(
            children: [
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context) =>front ())
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right:300.0,top: 20.0),
                    child: Icon(Icons.arrow_back,color: Colors.black,),
                  )),


           Padding(
            padding: const EdgeInsets.only(left: 88.0,top: 50.0),
            child: Container(height: 50,width: 250,decoration: BoxDecoration(border: Border.all()),
              child: TextFormField(
               controller: _passwordController,
                      decoration: InputDecoration(filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.password),
                          hintText: "password"
                      )
                  ),
            ),
          ),
              Padding(
                padding: const EdgeInsets.only(left: 88.0,top: 50.0),
                child: Container(height: 50,width: 250,decoration: BoxDecoration(border: Border.all()),
                  child: TextFormField(
                  controller: _emailController,
                      decoration: InputDecoration(filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.email),
                          hintText: "mail"

                      )
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 58.0,left: 90),
                child: ElevatedButton(onPressed: () async {
                 final message = await AuthService().registration(
                  email: _emailController.text,
                   password: _passwordController.text);

                  if(qwe.currentState!.validate()){
                  if(message!.contains('Success')) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OTT()),);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                    Text('account create')
                    )
                    );
                  }


                } else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("This Email Already Exist")));
                  }
                  }, child:Text('submit',style:
                  TextStyle(fontSize: 30),), ),
              )
            ],
          ),
    ));
  }
}
