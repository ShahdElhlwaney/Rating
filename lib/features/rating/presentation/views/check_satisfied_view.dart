

import 'package:flutter/material.dart';

import 'Widgets/check_satisfied_view_body.dart';

class CheckSatisfiedView extends StatelessWidget {
  const CheckSatisfiedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: CheckSatisfiedViewBody()),
    );
  }
}
