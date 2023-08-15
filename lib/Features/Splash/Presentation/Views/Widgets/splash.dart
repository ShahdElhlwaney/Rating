


import 'package:flutter/material.dart';
import 'package:rating_app/Features/Splash/Presentation/Views/rate-us_view.dart';
import 'package:rating_app/Features/Splash/Presentation/Views/splash1_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../splash2_view.dart';

final controller=PageController();
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: const [
            Splash1View(),
            Splash2View(),
            RateUsView()
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: SmoothPageIndicator(
              controller: controller,  // PageController
              count:  3,
              effect: const SlideEffect(
                   spacing: 8.0,
                   radius: 4.0,
                   dotWidth: 29,
                   dotHeight: 8.0,
                  paintStyle: PaintingStyle.stroke,
                   strokeWidth: 0,
                   dotColor: Colors.grey,
                   activeDotColor: Colors.white
    ), // your preferred effect
              onDotClicked: (index){
              }
          ),
        ),
      ],
    );





  }
}