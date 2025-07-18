import 'package:flutter/material.dart';

class Modul3Stack extends StatelessWidget {
  Modul3Stack({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Stack Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                color: Colors.red,
                height: 600,
                width: 200,
              ),
              Positioned(
                bottom: 50,
                left: 10,
                right: 10,
                child: Container(
                  color: Colors.green,
                  height: 400,
                  width: 200,
                ),
              ),

              Positioned(
                top: 50,
                left: 20,
                right: 25,
                child: Container(
                  color: Colors.purple,
                  height: 200,
                  width: 200,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}