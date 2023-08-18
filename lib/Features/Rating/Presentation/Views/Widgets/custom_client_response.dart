


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_app/Core/Utils/styles.dart';

import '../../../../../Core/Utils/colors.dart';

class CustomClientResponse extends StatelessWidget {
  const CustomClientResponse({Key? key, required this.text, required this.color, required this.onTap}) : super(key: key);
  final String text;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,      // Border.all(color:color==ColorsApp.activeClientResponseColor?
        //  ColorsApp.activeClientResponseColor:ColorsApp.inActiveEmojiColor)
       width: MediaQuery.of(context).size.width*.5-26,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color:color==ColorsApp.activeClientResponseColor?
      ColorsApp.activeClientResponseColor:ColorsApp.inActiveEmojiColor)
        ),
        child: Text(text,style: Styles.textStyle12.copyWith(
          color: color==ColorsApp.activeClientResponseColor?Colors.white:
              ColorsApp.inActiveEmojiColor
        ),),
      ),
    );
  }
}
