

import 'package:flutter/material.dart';

import '../Utils/colors.dart';

RoundedRectangleBorder setBorderRadius4() {
  return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4)
  );
}


RoundedRectangleBorder setBorderRadius4WithBorder() {
  return RoundedRectangleBorder(
    side: const BorderSide(color: ColorsApp.inActiveEmojiColor),
      borderRadius: BorderRadius.circular(4)
  );
}