

import 'package:flutter/material.dart';

import 'Widgets/feedback_chose_view_body.dart';

class FeedbackChoseView extends StatelessWidget {
  const FeedbackChoseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(child: FeedbackChoseViewBody()) ,
    );
  }
}
