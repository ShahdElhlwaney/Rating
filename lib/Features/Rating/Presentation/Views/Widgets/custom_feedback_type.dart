
import 'package:flutter/material.dart';
import 'package:rating_app/Core/Utils/styles.dart';

import '../../../../../Core/Utils/colors.dart';

class CustomFeedbackType extends StatelessWidget {
  const CustomFeedbackType({Key? key, this.onTap, required this.text}) : super(key: key);
 final void Function()? onTap;
 final String text;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,      // Border.all(color:color==ColorsApp.activeClientResponseColor?
        //  ColorsApp.activeClientResponseColor:ColorsApp.inActiveEmojiColor)
        width: MediaQuery.of(context).size.width*.5-26,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color:ColorsApp.mainColor)
        ),
        child: Text(text,style: Styles.textStyle14.copyWith(
          color: ColorsApp.mainColor
        )
        ),),

    );
  }
}
