

import 'package:flutter/material.dart';
import 'package:rating_app/Features/Splash/Presentation/Views/Widgets/button.dart';
import 'package:rating_app/Features/Splash/Presentation/Views/Widgets/image_screen.dart';

import '../../../../../Core/Utils/assets.dart';
import '../../../../../Core/Utils/colors.dart';

class RateUsViewBody extends StatelessWidget {
  const RateUsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ImageScreen(imageUrl: Assets.rateUs),
        Padding(
          padding: const EdgeInsets.only(bottom: 70),
          child: Button(text: 'Rate US', onPressed: () {  },),
        )

      ],
    );
  }
}
