
import 'dart:io';



import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sample/alagan.dart';
import 'package:shared_preferences/shared_preferences.dart';



class profiles extends StatefulWidget {
  const profiles({super.key});

  @override
  State<profiles> createState() => _profilesState();
}

class _profilesState extends State<profiles> {
  File? _image;
  final picker = ImagePicker();
  late SharedPreferences _prefs;

  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      _prefs = prefs;
      // Load saved image path if available
      String? imagePath = _prefs.getString('imagePath');
      if (imagePath != null) {
        setState(() {
          _image = File(imagePath);
        });
      }
    });
  }
  Future getImageFromGallery() async {



    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);


      setState(() {
        _image = File(pickedFile!.path);
      });
    _prefs.setString('imagePath', pickedFile!.path);
  }


  Future<void> _saveData(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(


         body: SingleChildScrollView(
           child: Column(
               children: [GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) =>front())
                     );
                   },
                   child: Padding(
                     padding: const EdgeInsets.only(right:400.0,top: 50.0),
                     child: Icon(Icons.arrow_back,),
                   )),
               SizedBox(height: 20),
               GestureDetector(
                onTap: getImageFromGallery,
                child: CircleAvatar(
                  radius: 70,
                   backgroundColor: Colors.grey[200],
                    backgroundImage: _image != null ? FileImage(_image!) : null,
                    child: _image == null
                      ? Padding(
                        padding: const EdgeInsets.only(left: 98.0,top: 80.0),
                        child: Icon(
                          Icons.camera_alt,
                          size: 50,
                           ),
                      )
                            : null,
                   ),
                    ),


                                SizedBox(height: 20,),
                                 TextFormField(
                                  decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person_off),
                                    hintText: "Name"
                                   ),onChanged: (value) {
                                   _saveData('name', value); // Save name to shared preferences
                                 },
                                   ),SizedBox(height: 25,),
                                       TextFormField(
                                    decoration: InputDecoration(
                                           prefixIcon: Icon(Icons.password),
              hintText: "password"
          ),onChanged: (value) {
                                         _saveData('password', value); // Save name to shared preferences
                                       },
        ),
        SizedBox(height: 25,),

        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.mark_email_unread_outlined),
              hintText: "Email address"
          ),onChanged: (value) {
    _saveData('Email address', value); // Save name to shared preferences
    },
        ),SizedBox(height: 25,),
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.mobile_friendly_sharp),
              hintText: "Contact number"
          ),onChanged: (value) {
          _saveData('Contact number', value); // Save name to shared preferences
        },
        ),
        SizedBox(height: 80,),
        ElevatedButton(onPressed: (){}, child:Text('Update profile',
        style: TextStyle(fontSize: 30),
        ))
]  )
    )
    );
  }
}



class qwertyu extends StatefulWidget {
  const qwertyu({super.key});

  @override
  State<qwertyu> createState() => _qwertyuState();
}

class _qwertyuState extends State<qwertyu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width/2.5,
              color: Colors.cyan,),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child:Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width/2.5,
                  color: Colors.cyan,),
              ),
            ],
          )
        ],
      ),
    );
  }
}



