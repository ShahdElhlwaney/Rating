


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rating_app/Core/Utils/app_router.dart';
import 'package:rating_app/Core/Utils/styles.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/welcome_rating_section.dart';

import '../../../../../Core/Widgets/button.dart';
import 'custom_client_response.dart';
import 'feedback_chose_row.dart';

class FeedbackChoseViewBody extends StatelessWidget {
  const FeedbackChoseViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(16),
      child: Column(
          children: [
            WelcomeRatingSection(),
            SizedBox(height: 29,),
            Text('Choose your feedback',style: Styles.textStyle16,),
            const SizedBox(height: 24,),
            const FeedbackChoseRow(),
            const SizedBox(
              height: 46,
            ),
            Button(text: 'Send', onPressed: () {
              GoRouter.of(context).push(AppRouter.kFeedbackClientView);
            },)

          ],
      ),
    );
  }
}
