


import 'package:flutter/material.dart';
import 'package:rating_app/Core/Utils/colors.dart';
import 'package:rating_app/Core/Utils/styles.dart';

import '../Methods/set_border_radius_4.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.text, required this.onPressed,  this.color=ColorsApp.mainColor}) : super(key: key);
 final String text;
 final void Function() onPressed;
 final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: TextButton(onPressed: onPressed
        ,
        style: TextButton.styleFrom(
            backgroundColor: color ,
            shape: setBorderRadius4()
        ), child: Text(text,style: Styles.textStyle14,),),
    );





  }


}
