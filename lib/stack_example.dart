import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  StackExample({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example", style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Colors.blueGrey,
                  height: double.infinity,
                  width: double.infinity,
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage("assets/img/ai_img.png"),
                                radius: 60,
                              ),
                              Text("Mr. Stranger", style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25
                              ),),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 130,
                          top: 50,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green,width: 3)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}