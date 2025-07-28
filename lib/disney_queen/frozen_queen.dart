import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'image_view_screen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';

class FrozenQueen extends StatefulWidget {
  const FrozenQueen({super.key});

  @override
  State<FrozenQueen> createState() => _FrozenQueenState();
}

class _FrozenQueenState extends State<FrozenQueen> {
  bool isLoading = true;
  List<String> imageUrls = [];

  get http => null;

  @override
  void initState() {
    super.initState();
    loadImages();
    fetchImageFromFireStore();
  }

  void fetchImageFromFireStore() {
    FirebaseFirestore.instance
        .collection("elsa_queen")
        .doc("images_elsa")
        .snapshots()
        .listen((snapshot) {
      if (snapshot.exists) {
        final images = List<String>.from(snapshot["images"]);
        setState(() {
          imageUrls = images;
          imageUrls.shuffle(Random());
        });
      }
    });
  }

  Future<void> loadImages() async {
    // Simulate loading
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      isLoading = false;
    });
  }

  Future<void> _refreshImages() async {
    // Optional: Reshuffle images or trigger a reload
    setState(() {
      imageUrls.shuffle(Random());
    });
  }


  Future<void> downloadImage(String imageUrl, String filename) async {
    try {
      // Ask storage permission
      var status = await Permission.storage.request();
      if (!status.isGranted) {
        print('Permission not granted');
        return;
      }

      // Get external directory
      final dir = await getExternalStorageDirectory();
      if (dir == null) {
        print('Storage directory not found');
        return;
      }

      final filePath = '${dir.path}/$filename.jpg';

      // Download image
      final response = await http.get(Uri.parse(imageUrl));
      final file = File(filePath);
      await file.writeAsBytes(response.bodyBytes);

      print('Image saved to $filePath');
    } catch (e) {
      print('Download failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text("Elsa❄️"),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
        onRefresh: _refreshImages,
        child: MasonryGridView.count(
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: imageUrls.length,
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          padding: const EdgeInsets.all(8),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ImageViewScreen(
                          imageUrl: imageUrls[index],
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag: imageUrls[index],
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FadeInImage.assetNetwork(
                            placeholder: 'assets/loading.gif',
                            image: imageUrls[index],
                            width: double.infinity,
                            height: 250 + (index % 2) * 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: IconButton(
                              onPressed: (){
                                downloadImage(imageUrls[index], "downloaded_$index");
                              },
                              icon: Icon(Icons.download_for_offline_rounded, color: Colors.greenAccent, size: 50,)
                          ),
                        )
                      ],
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
