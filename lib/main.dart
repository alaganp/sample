
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/BMI.dart';
import 'package:sample/alagan.dart';
import 'package:sample/cal.dart';
import 'package:sample/createlist.dart';


import 'package:sample/flash.dart';
import 'package:sample/just.dart';
import 'package:sample/login%20page.dart';
import 'package:sample/ott%203%20pages.dart';
import 'package:sample/profile.dart';
import 'package:sample/sign%20in.dart';
import 'package:sample/theme%20modes.dart';

import 'package:sample/theme.dart';
import 'package:sample/themes..dart';
import 'package:sample/video.dart';
import 'package:sample/view%20page.dart';
import 'package:theme_provider/theme_provider.dart';







Future<void> main() async {WidgetsFlutterBinding.ensureInitialized();



  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBLrP2r4hfAb9qAbME399N4qhLrPRluKI4",
      appId:  "1:278356051158:web:724652cb86781227ea3577",
      messagingSenderId:"278356051158",
      projectId: "abcd-9f7c8",
    )
);



runApp(const MyApp());
}

class MyApp extends StatelessWidget {



      const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(



      debugShowCheckedModeBanner: false,




      home:bmical(),


      );
  }
}


