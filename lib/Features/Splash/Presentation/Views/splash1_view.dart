


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../Core/Methods/set_status_bar_color.dart';
import 'Widgets/splash1_view_body.dart';

class Splash1View extends StatelessWidget {
  const Splash1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);

    return  Scaffold(
      body: Splash1ViewBody(),
    );
  }
}
