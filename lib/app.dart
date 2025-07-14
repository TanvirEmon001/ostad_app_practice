import 'package:flutter/material.dart';
import 'package:ostad_flutter/another_page.dart';
import 'package:ostad_flutter/basic_fb_ui.dart';
import 'package:ostad_flutter/home_page.dart';
import 'package:ostad_flutter/login_screen.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Tanvir Emon",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }

}