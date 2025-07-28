import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';

class ElsaImages {
  List<Map<String, String>> elsaImages = [];

  /// Fetch data from Firestore and populate the list
  Future<void> fetchImagesFromFirestore() async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('elsa_images')
          .get();

      elsaImages = snapshot.docs
          .map((doc) {
        print("Fetched image: ${doc['imageLink']}"); // confirm fetch
        return {"image": doc['imageLink'] as String}; // 🔧 fix here
      })
          .toList();
    } catch (e) {
      print("Error fetching images: $e");
    }
  }




  void shuffle(Random random) {
    elsaImages.shuffle(Random());
  }
}
