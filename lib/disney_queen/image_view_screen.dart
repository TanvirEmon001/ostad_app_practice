import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ostad_flutter/disney_queen/single_image.dart';


class ImageViewScreen extends StatefulWidget {
  final String? imageUrl;
  const ImageViewScreen({super.key, required this.imageUrl});

  @override
  State<ImageViewScreen> createState() => _ImageViewScreenState();
}

class _ImageViewScreenState extends State<ImageViewScreen> {



  bool isLoading = true;
  List<String> imageUrls = [];

  @override
  void initState() {
    super.initState();
    loadImages();
    fetchImageFromFireStore();
  }

  void fetchImageFromFireStore(){
    FirebaseFirestore.instance
        .collection("elsa_queen")
        .doc("images_elsa")
        .snapshots()
        .listen((snapshot){
      if(snapshot.exists){
        final images = List<String>.from(snapshot["images"]);
        setState(() {
          imageUrls = images;
          imageUrls.shuffle(Random());
        });
      }
    });
  }

  Future<void> loadImages() async {

    //imageUrls.shuffle(Random());
    setState(() {
      isLoading = false;
    });
  }

  Future<void> _refreshImages() async {
    // Simulate network delay (optional)
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      imageUrls.shuffle(Random());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Elsa Queen"),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshImages,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(), // Required for RefreshIndicator to trigger
          child: Column(
            children: [
              // Enlarged Image Container
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SingleImage(url: widget.imageUrl),
                    ),
                  );
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
                      image: widget.imageUrl!,
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
                  itemCount: imageUrls.length,
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
                                  imageUrl: imageUrls[index],
                                ),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FadeInImage.assetNetwork(
                              placeholder: 'assets/loading.gif',
                              image: imageUrls[index],
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
      ),
    );
  }
}
