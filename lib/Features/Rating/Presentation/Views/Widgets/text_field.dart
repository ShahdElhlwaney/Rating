


import 'package:flutter/material.dart';

import '../../../../../Core/Utils/assets.dart';
import '../../../../../Core/Utils/colors.dart';

class RatingTextField extends StatelessWidget {
  const RatingTextField({Key? key, required this.onChanged}) : super(key: key);
  final void Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return    TextField(
      onChanged:onChanged ,
      decoration: InputDecoration(
          hintText: 'Enter your number or ID',
          enabledBorder: buildOutlineInputBorder(ColorsApp.notActiveMainColor),
          focusedBorder:buildOutlineInputBorder(ColorsApp.mainColor),
          suffixIcon: Image.asset(Assets.helpIcon,width: 13.12,height: 13.12,)
      ),
    );
  }
  OutlineInputBorder buildOutlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
          color:color// ColorsApp.notActiveMainColor,
      ),
    );
  }
}
