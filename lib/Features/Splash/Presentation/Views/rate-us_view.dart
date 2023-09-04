

import 'package:flutter/services.dart';

import 'package:flutter/material.dart';

import '../../../../Core/Methods/set_status_bar_color.dart';
import 'Widgets/rate_us_view_body.dart';

class RateUsView extends StatelessWidget {
  const RateUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
        body:RateUsViewBody()
      );

  }


}
