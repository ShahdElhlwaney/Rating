


import 'package:flutter/material.dart';
import '../../../../../Core/Methods/set_status_bar_color.dart';
import '../../../../../Core/Utils/assets.dart';
import 'image_screen.dart';
final controller=PageController(
  initialPage: 1
);
class Splash1ViewBody extends StatelessWidget {
  const Splash1ViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ImageScreen(imageUrl: Assets.splash1,));






  }
}
