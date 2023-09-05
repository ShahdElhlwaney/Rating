
import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';
import 'custom_feedback_type.dart';

class FeedbackTypeSection extends StatelessWidget {
  const FeedbackTypeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
      Text('What is your feedback type?',style: Styles.textStyle16,),
    SizedBox(height: 24,),
     Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    CustomFeedbackType(text: 'Suggestion',),
    CustomFeedbackType(text: 'Complaint',)
      ],
    )
    ]
    );
  }
}
