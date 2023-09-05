


import 'package:flutter/material.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/logo_row.dart';

import '../../../../../Core/Utils/assets.dart';
import '../../../../../Core/Utils/styles.dart';

class ThanksRatingSection extends StatelessWidget {
  const ThanksRatingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LogoRow(),
        const SizedBox(height: 38,),
        Image.asset(Assets.thanksRating),
        const SizedBox(height: 1,),
        const Text('Thank you for Rating us',style: Styles.textStyle18,),
      ],
    );
  }
}
