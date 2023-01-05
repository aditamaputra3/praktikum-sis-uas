import 'dart:async';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:praktikum_firebase_login/page/home_page.dart';
import 'package:praktikum_firebase_login/page/login_page.dart';
import 'package:praktikum_firebase_login/page/register_page.dart';
import 'package:praktikum_firebase_login/page/update_mhs.dart';
import 'package:praktikum_firebase_login/page/welcome_page.dart';
import 'package:praktikum_firebase_login/page/add_mhs.dart';
import 'package:praktikum_firebase_login/page/data_mhs_page.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: new SvgPicture.asset(
                'lib/assets/Baker-rafiki.svg'),
    );
  }
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
	    debugShowCheckedModeBanner: false,
      //initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'login_screen': (context) => LoginScreen(),
        'home_screen': (context) => HomeScreen(),
        'add_mhs': (context) => AddMhs(),
        'data_mhs': (context) => DataMhs(),
        'update_mhs': (context) => UpdateMhs(),
        
      },
    );
  }
}