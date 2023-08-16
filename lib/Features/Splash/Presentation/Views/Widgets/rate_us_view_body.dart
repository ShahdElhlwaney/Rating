

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rating_app/Core/Utils/app_router.dart';
import 'package:rating_app/Core/Widgets/button.dart';
import 'package:rating_app/Features/Splash/Presentation/Views/Widgets/image_screen.dart';

import '../../../../../Core/Utils/assets.dart';
import '../../../../../Core/Utils/colors.dart';
import '../../../../Rating/Presentation/Views/start_rating_view.dart';

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
          child: Button(text: 'Rate US', onPressed: () {
            GoRouter.of(context).push(AppRouter.kStartRatingView);
            //Navigator.push(context, MaterialPageRoute(builder: (context)=>StartRatingView()));
          },),
        )

      ],
    );
  }
}
