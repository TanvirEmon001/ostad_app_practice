import 'package:flutter/material.dart';

class Modul8Class3 extends StatelessWidget {
  Modul8Class3({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        backgroundColor: Colors.greenAccent,
      ),
      body: GridView.count(
          crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Card(
            color: Colors.greenAccent,
            elevation: 5,
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            color: Colors.green,
            elevation: 5,
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            color: Colors.yellowAccent,
            elevation: 5,
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            color: Colors.yellow,
            elevation: 5,
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            color: Colors.grey,
            elevation: 5,
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            color: Colors.greenAccent,
            elevation: 5,
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            color: Colors.greenAccent,
            elevation: 5,
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            color: Colors.greenAccent,
            elevation: 5,
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            color: Colors.greenAccent,
            elevation: 5,
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            color: Colors.greenAccent,
            elevation: 5,
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}