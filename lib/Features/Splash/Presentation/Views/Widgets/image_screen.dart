import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({
    super.key, required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image:  DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(imageUrl))
      ),
    );
  }
}