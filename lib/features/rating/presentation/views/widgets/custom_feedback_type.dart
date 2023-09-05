
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rating_app/Core/Utils/app_router.dart';
import 'package:rating_app/Core/Utils/styles.dart';

import '../../../../../Core/Utils/colors.dart';

class CustomFeedbackType extends StatelessWidget {
  const CustomFeedbackType({Key? key, required this.text}) : super(key: key);
 final String text;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kFeedbackChoseView);
      },
      child: Container(
        height: 52,
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
