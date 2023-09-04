


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rating_app/Core/Widgets/button.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/rate_text_field.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/welcome_rating_section.dart';

import '../../../../../Core/Utils/app_router.dart';
import '../../../../../Core/Utils/styles.dart';

class FeedbackClientViewBody extends StatelessWidget {
  const FeedbackClientViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children:[
            const WelcomeRatingSection(),
             const SizedBox(height: 29,),
            const Text('What is your feedback?',style: Styles.textStyle16,),
            const SizedBox(height: 23,),
             RateTextField(onChanged: (String ) {  },),
            const SizedBox(height: 214,),
            Button(text: 'Send', onPressed: () {
              GoRouter.of(context).push(AppRouter.kComeBackToHomeView);
            },)
          ]
        ),
      ),
    );
  }
}
