

import 'package:flutter/material.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/thanks_rating_section.dart';

import 'feedback_type_section.dart';

class ThanksRatingViewBody extends StatelessWidget {
  const ThanksRatingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 54),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ThanksRatingSection(),
            SizedBox(height: 45,),
            FeedbackTypeSection()

              ],
            )
      )
        );

  }
}
