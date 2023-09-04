

import 'package:flutter/material.dart';
import 'package:rating_app/Core/Utils/styles.dart';

import '../../../../../Core/Utils/colors.dart';

class RateTextField extends StatelessWidget {
   const RateTextField({Key? key, required this.onChanged}) : super(key: key);
   final void Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller=TextEditingController();

    return SizedBox(
      height: 24,
      child: TextField(
        controller:controller ,
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: Text('    0 / 500',style: Styles.textStyle12.copyWith(
            color: ColorsApp.inActiveEmojiColor
          ),)
        ),
      ),
    );
  }
}
