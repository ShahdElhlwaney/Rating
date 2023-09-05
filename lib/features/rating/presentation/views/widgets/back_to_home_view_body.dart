



import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rating_app/Core/Utils/app_router.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/thanks_rating_section.dart';

import '../../../../../Core/Utils/styles.dart';
import '../../../../../Core/Widgets/button.dart';

class BackToHomeViewBody extends StatelessWidget {
  const BackToHomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const ThanksRatingSection(),
            const SizedBox(height: 45,),
            const Text('What is your feedback type?',style: Styles.textStyle16,),
            const SizedBox(height: 24,),

            Button(text: 'Back To Home', onPressed: () {
              GoRouter.of(context).push(AppRouter.kStartRatingView);
            },),
          ],
        ),
      ),
    );
  }
}
