


import 'package:flutter/material.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/welcome_text.dart';

import 'logo_row.dart';

class WelcomeRatingSection extends StatelessWidget {
  const WelcomeRatingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LogoRow(),
        SizedBox(height: 69,),
        WelcomeText()
      ],
    );
  }
}
