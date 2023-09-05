


import 'package:flutter/material.dart';

import 'Widgets/back_to_home_view_body.dart';

class BackToHomeView extends StatelessWidget {
  const BackToHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BackToHomeViewBody()),
    );
  }
}
