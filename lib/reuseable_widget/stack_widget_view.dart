import 'package:flutter/material.dart';

class StackWidgetView extends StatelessWidget {
  const StackWidgetView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/2165182012/photo/kuala-lumpur-city-view-at-night-with-saloma-bridge-connecting-the-old-and-new-city-buildings.webp?a=1&b=1&s=612x612&w=0&k=20&c=ZwGfA3cgdTfrbp_CNLlDtivooyG1XP5BNl_Qcrz2ZVM="), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 100,
          left: 15,
          child: Column(
            children: [
              Text("Explore The world", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),),
            ],
          ),
        ),
        Positioned(
          bottom: 50,
          left: 15,
          child: Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search Destination...',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}