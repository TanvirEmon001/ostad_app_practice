import 'package:flutter/material.dart';

class SingleImage extends StatelessWidget {
  final String? url;
  const SingleImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: FadeInImage.assetNetwork(
                  placeholder: 'assets/loading.gif',
                image: url!,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
