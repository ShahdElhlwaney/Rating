

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rating_app/Core/Utils/app_router.dart';
import 'package:rating_app/Core/Utils/assets.dart';
import 'package:rating_app/Core/Widgets/button.dart';
import 'package:rating_app/Features/Splash/Presentation/Views/Widgets/image_screen.dart';


class RateUsViewBody extends StatelessWidget {
  const RateUsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ImageScreen(imageUrl: Assets.rateUs),
        Padding(
          padding: const EdgeInsets.only(bottom: 70,right: 16,left: 16),
          child: Button(text: 'Rate US', onPressed: () {
            GoRouter.of(context).push(AppRouter.kStartRatingView);
          },),
        )

      ],
    );
  }
}
