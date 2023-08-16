import 'package:flutter/material.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/start_rating_section.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/welcome_rating_section.dart';

class StartRatingViewBody extends StatefulWidget {
  const StartRatingViewBody({Key? key}) : super(key: key);
  @override
  State<StartRatingViewBody> createState()=>_StartRatingViewBodyState();
}
class _StartRatingViewBodyState extends State<StartRatingViewBody> {
  Color color=Colors.grey ;
String? t;
  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(left: 16,right: 16,top: 54),
      child:  SingleChildScrollView(
        child: Column(
          children: [
            WelcomeRatingSection(),
            SizedBox(height: 38,),
            StartRatingSection()
          ],
        ),
      ),
    );
  }
}


