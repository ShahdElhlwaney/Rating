


import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome to our',style: Styles.textStyle20,),
        SizedBox(height: 4,),
        Text('Rating management system',style: Styles.textStyle14.copyWith(
            color: Colors.black
        ),),
      ],
    );
  }
}
