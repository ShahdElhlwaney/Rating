

import 'package:flutter/material.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/welcome_rating_section.dart';

import '../../../../../Core/Utils/styles.dart';
import 'client_satisfied_response_section.dart';

class CheckSatisfiedViewBody extends StatelessWidget {
  const CheckSatisfiedViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 54),        child: SingleChildScrollView(
            child: Column(
              children: [
                WelcomeRatingSection(),
                SizedBox(
                  height: 29,
                ),
                Text('Are you satisfied with our service?'
                  ,style: Styles.textStyle16,),
                SizedBox(height: 16,),
                ClientSatisfiedResponseSection()

              ],
            )),
      ),
    );
  }
}
