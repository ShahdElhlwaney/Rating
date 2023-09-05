


import 'package:flutter/material.dart';
import 'package:rating_app/Core/Utils/assets.dart';
import 'package:rating_app/Features/Splash/Presentation/Views/Widgets/image_screen.dart';


class Splash2ViewBody extends StatelessWidget {
  const Splash2ViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const ImageScreen(imageUrl: Assets.splash2,);
  }
}


