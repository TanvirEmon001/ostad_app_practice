import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back, color: Colors.white,)),
        title: Text("My Profile", style: TextStyle(
          color: Colors.orange,
        ),),
      ),
      body: Column(
        //below app bar
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black87
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: Text("Details", style: TextStyle(color: Colors.white),)),
                  SizedBox(width: 100,),
                  Flexible(child: Text("Transaction", style: TextStyle(color: Colors.white),)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}