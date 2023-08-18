import 'package:flutter/material.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/skip_button.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/welcome_rating_section.dart';
import '../../../../../Core/Utils/styles.dart';
import 'change_state_section.dart';



class EmojiViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 54),
      child: SingleChildScrollView(
        child: Column(
          children: [
            WelcomeRatingSection(),
            SizedBox(
              height: 29,
            ),
            Text(
              'How you doing today?',
              style: Styles.textStyle16,
            ),
           SizedBox(height: 16,),
           ChangeStateSection(),


            SizedBox(height: 16,),
            SkipButton()
          ],
        ),
      ),
    );
  }
}



