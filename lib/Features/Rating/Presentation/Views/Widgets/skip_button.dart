
import 'package:flutter/material.dart';

import '../../../../../Core/Methods/set_border_radius_4.dart';
import '../../../../../Core/Utils/colors.dart';
import '../../../../../Core/Utils/styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: TextButton(onPressed: (){}
        , child: Text('Skip',style: Styles.textStyle14.copyWith(
          color: ColorsApp.inActiveEmojiColor
        ),),
        style: TextButton.styleFrom(

            backgroundColor: Colors.white ,
            shape: setBorderRadius4()
        ),),
    );
  }
}
