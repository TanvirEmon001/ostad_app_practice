import 'package:flutter/material.dart';

class Module8Class2 extends StatelessWidget {
  const Module8Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.asset("assets/img/ai_img.png")
        ],
      ),
    );
  }
}
