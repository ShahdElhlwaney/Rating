


import 'package:flutter/material.dart';

import '../../../../Core/Methods/set_status_bar_color.dart';
import 'Widgets/splash2_view_body.dart';

class Splash2View extends StatelessWidget {
  const Splash2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // setStatusBarColor();

    return const Scaffold(
      body: Splash2ViewBody()
    );
  }
}
