
import 'package:flutter/material.dart';

import '../../../../../Core/Utils/assets.dart';
import 'logo_word.dart';

class LogoRow extends StatelessWidget {
  const LogoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(image: AssetImage(Assets.logo)),
        LogoWord()
      ],
    );
  }
}