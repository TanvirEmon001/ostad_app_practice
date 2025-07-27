import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ostad_flutter/disney_queen/single_image.dart';
import 'elsa_images.dart';

class ImageViewScreen extends StatelessWidget {
  final String? imageUrl;
  const ImageViewScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    // Create a local instance and shuffle for variation
    final ElsaImages elsaImages = ElsaImages();
    elsaImages.shuffle(Random());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Elsa Queen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Enlarged Image Container
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SingleImage(url: imageUrl)));
              },
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(color: Colors.cyanAccent),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/loading.gif',
                    image: imageUrl!,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // GridView Below the Enlarged Image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MasonryGridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
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
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ImageViewScreen(
                                imageUrl: elsaImages.elsaImages[index]["image"]!,
                              ),
                            ),
                          );
                        },
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
