 import 'dart:io';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// class yt1 extends StatefulWidget{
//
//   @override
//   State<yt1> createState() => _yt1State();
// }
//
// class _yt1State extends State<yt1> {
//
//   final Key =GlobalKey<FormState>();
//
//   bool _show =false;
//
//   TextEditingController ctrl = TextEditingController();
//   TextEditingController ctrl1 = TextEditingController();
//   TextEditingController ctrl2 = TextEditingController();
//   TextEditingController ctrl3 = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      body: Column(children: [
//               SizedBox(height: 50,),
//               Container(width: 300,
//                 child: TextFormField(
//                   controller:ctrl1,
//                   onChanged: (a){
//                     setState(() {
//                       ctrl1.text.isNotEmpty ? _show = true: _show = false;
//                     });
//                   },
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.email),
//                     hintText: "email",
//                     border: OutlineInputBorder(),
//
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   validator: (value){
//                     if( value!.isEmpty || RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(value) ){
//                       return "value is empty";
//                     }
//                   },
//
//                 ),
//               ),
//               SizedBox(height: 50,),
//                     Container(width: 300,
//                       child: TextFormField(
//                         controller: ctrl2,
//                          onChanged: (a){
//                           setState(() {
//                             ctrl2.text.isNotEmpty? _show=true: _show=false;
//                           });
//                          },
//
//                       decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.password),
//                         hintText: "Password",
//                         border: OutlineInputBorder(),
//
//                       ),
//                       keyboardType: TextInputType.name,
//                       validator: (value){
//                         if (value!.isEmpty || RegExp(r'^[a-zA-Z]+$').hasMatch(value)
//                         ){
//                           return "value is empty";
//                         }
//                       },
//                                    ),
//                     ),
//               SizedBox(height: 50,),
//               Container(width: 300,
//                 child: TextFormField(
//                   controller: ctrl3,
//                   onChanged: (a){
//                     setState(() {
//                       ctrl3.text.isNotEmpty? _show=true:_show=false;
//                     });
//                   },
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.password),
//                     hintText: "password",
//                     border: OutlineInputBorder(),
//                   ),
//                   keyboardType: TextInputType.number,
//                   validator: (value){
//                     if(value!.isEmpty || RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)){
//                       return"value is empty";
//                     }
//                   },
//                 ),
//               ),
//               SizedBox(height: 50,),
//
//                   Visibility(
//                     visible: _show,
//                     child: ElevatedButton(onPressed: (){
//                         if(Key.currentState!.validate()){
//                           ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(content:Text("success")));
//                         }
//                       },
//                           child:Text("Login")),
//     ));
//
//
//
//
//
//
//   }
// }
//
//
//
//
//
//
//
//
//
//
// class qwerttt extends StatefulWidget {
//   const qwerttt({super.key});
//
//   @override
//   State<qwerttt> createState() => _qwertttState();
// }
//
// class _qwertttState extends State<qwerttt> {
//
//   bool _show =false;
//
//
//  TextEditingController ctrl = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextFormField(
//           ),
//           Visibility(
//             visible: _show,
//             child: ElevatedButton(onPressed: (){
//
//             }, child: Text("ok")),
//           )
//         ],
//       ),
//     );
 //  }
// }