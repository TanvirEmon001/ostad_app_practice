import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Gridview Builder"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ),
          itemCount: 4,
          itemBuilder: (context, index){
            return Card(
              color: Colors.greenAccent.shade400,
              elevation: 5,
              child: Column(
                children: [
                  Icon(Icons.phone_android,size: 40,color: Colors.white,),
                  SizedBox(height: 10,),
                  Text(index.toString(),style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                  ),)
                ],
              ),
            );
          }
      ),
    );
  }
}