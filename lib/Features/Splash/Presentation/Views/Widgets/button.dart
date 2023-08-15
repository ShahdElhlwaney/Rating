


import 'package:flutter/material.dart';
import 'package:rating_app/Core/Utils/colors.dart';
import 'package:rating_app/Core/Utils/styles.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.text, required this.onPressed}) : super(key: key);
 final String text;
 final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 343,
      child: TextButton(onPressed: onPressed
        , child: Text(text,style: Styles.textStyle14,),
        style: TextButton.styleFrom(
            backgroundColor: ColorsApp.buttonColor ,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
            )
        ),),
    );





  }
}
