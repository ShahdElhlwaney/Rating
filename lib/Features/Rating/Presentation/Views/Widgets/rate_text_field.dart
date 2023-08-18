

import 'package:flutter/material.dart';
import 'package:rating_app/Core/Utils/styles.dart';

import '../../../../../Core/Utils/colors.dart';

class RateTextField extends StatelessWidget {
  const RateTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 24,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Align(
            alignment: Alignment.topRight,
            child: Text('0 / 500',style: Styles.textStyle12.copyWith(
              color: ColorsApp.inActiveEmojiColor
            ),),
          )
        ),
      ),
    );
  }
}
