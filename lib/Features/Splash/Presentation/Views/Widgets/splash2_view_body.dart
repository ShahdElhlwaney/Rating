


import 'package:flutter/material.dart';
import 'package:rating_app/Features/Splash/Presentation/Views/Widgets/image_screen.dart';

import '../../../../../Core/Utils/assets.dart';

class Splash2ViewBody extends StatelessWidget {
  const Splash2ViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ImageScreen(imageUrl: Assets.splash2,);
  }
}


