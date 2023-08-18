

import 'package:flutter/material.dart';
import 'package:rating_app/Core/Widgets/button.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/rate_text_field.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/skip_button.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/welcome_rating_section.dart';

import '../../../../../Core/Utils/styles.dart';

class ClientRateViewBody extends StatelessWidget {
  const ClientRateViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 54),
      child: SingleChildScrollView(
        child: Column(
          children: [
             WelcomeRatingSection(),
            SizedBox(height: 29,),
            Text('What Is your rate about our service?'
              ,style: Styles.textStyle16,textAlign: TextAlign.end,),
            SizedBox(height: 23,),
            RateTextField(),
            SizedBox(
              height: 214,
            ),
            Button(text: 'Send', onPressed: () {  },),
            SizedBox(height: 16,),
            SkipButton()

          ],
        ),
      ),
    );
  }
}
