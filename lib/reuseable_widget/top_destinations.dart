import 'package:flutter/material.dart';

class TopDestinations extends StatelessWidget {
  final String? imageLink;
  final String? destinationName;

  const TopDestinations({
    super.key,
    required this.destinationName,
    required this.imageLink
  });

  @override
  Widget build(BuildContext context){
    return Flexible(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15), // Adjust radius as needed
            child: Image.network(
              imageLink!,
              fit: BoxFit.cover,
              width: 180, // or double.infinity
              height: 120,
            ),
          ),
          Positioned(
            bottom: 5,
            left: 10,
            child: Text(destinationName!, style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18
            ),),
          )
        ],
      ),
    );
  }
}