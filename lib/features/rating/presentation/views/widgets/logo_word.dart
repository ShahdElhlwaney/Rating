

import 'package:flutter/material.dart';

import '../../../../../Core/Utils/colors.dart';
import '../../../../../Core/Utils/styles.dart';

class LogoWord extends StatelessWidget {
  const LogoWord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 59,
      height: 32,
      alignment: Alignment.center,
      child: Text('العربية',style: Styles.textStyle12.copyWith(
          color: ColorsApp.mainColor
      ),),
      decoration: BoxDecoration(
          border: Border.all(color:ColorsApp.mainColor ),
          borderRadius: BorderRadius.circular(4)
      ),
    );
  }
}
