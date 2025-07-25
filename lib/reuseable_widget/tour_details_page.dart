import 'package:flutter/material.dart';

class TourDetailsPage extends StatelessWidget {
  final String? image;
  final String? name;
  const TourDetailsPage({
    super.key,
    required this.image,
    required this.name
  });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("$name Tour"),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),),
                child: Image(image: NetworkImage(image!)),
              ),
              Positioned(
                right: 10,
                bottom: 10,
                child: Text(
                    name!,
                  style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20
                  ),
                ),
              ),
              Positioned(
                right: 15,
                top: 10,
                child: Container(
                  padding: EdgeInsets.all(5),
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: [
                      Text("4.5"),
                      Icon(Icons.star, size: 15,),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}