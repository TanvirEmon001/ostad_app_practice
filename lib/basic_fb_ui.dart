import 'package:flutter/material.dart';


class FaceBookUi extends StatelessWidget{
  FaceBookUi({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.facebook, color: Colors.white, size: 80,)
              ],
            ),
          )
        ],
      ),
    );
  }
}