import 'package:flutter/material.dart';
import 'package:ostad_flutter/grid_view_builder.dart';
import 'package:ostad_flutter/input_form.dart';

import 'package:ostad_flutter/list_view_practice.dart';
import 'package:ostad_flutter/modul_3_stack.dart';
import 'package:ostad_flutter/modul_8_class_3.dart';
import 'package:ostad_flutter/stack_example.dart';
import 'package:ostad_flutter/tour_app.dart';


class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Tanvir Emon",
      debugShowCheckedModeBanner: false,
      home: TourApp(),
    );
  }

}