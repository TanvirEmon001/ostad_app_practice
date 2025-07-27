import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'elsa_images.dart';
import 'image_view_screen.dart';

class FrozenQueen extends StatefulWidget {
  const FrozenQueen({super.key});

  @override
  State<FrozenQueen> createState() => _FrozenQueenState();
}

class _FrozenQueenState extends State<FrozenQueen> {

  ElsaImages elsaImages = ElsaImages();

  @override
  void initState() {
    super.initState();
    // Shuffle the list to display in random order
    elsaImages.shuffle(Random());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text("Elsa❄️"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MasonryGridView.count(
          itemCount: elsaImages.elsaImages.length,
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 10,
              child: Material(
                color: Colors.transparent, // So background is still transparent
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ImageViewScreen(
                          imageUrl: elsaImages.elsaImages[index]["image"]!,
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag: elsaImages.elsaImages[index]["image"]!,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/loading.gif',
                        image: elsaImages.elsaImages[index]["image"]!,
                        width: double.infinity,
                        height: 250 + (index % 2) * 20,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            );

          },
        ),
      ),
    );
  }
}
