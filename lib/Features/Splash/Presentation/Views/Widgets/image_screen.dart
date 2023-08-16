import 'package:flutter/material.dart';

import '../../../../../Core/Methods/set_status_bar_color.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({
    super.key, required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    setStatusBarColor();
    return Container(
      decoration:  BoxDecoration(
          image:  DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imageUrl))
      ),
    );
  }
}