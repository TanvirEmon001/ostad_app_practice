import 'package:flutter/material.dart';


class SimpleCalculatorDesign extends StatelessWidget {
  const SimpleCalculatorDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Simple Calculator", style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold
        ),),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("0", style: TextStyle(
                    fontSize: 50, fontWeight: FontWeight.bold
                  ),),
                  Text("0", style: TextStyle(
                      fontSize: 40
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}