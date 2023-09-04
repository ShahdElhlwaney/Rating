

import 'package:flutter/material.dart';

import 'Widgets/feedback_client_view_body.dart';

class FeedbackClientView extends StatelessWidget {
  const FeedbackClientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: FeedbackClientViewBody()),
    );
  }
}
