import 'package:flutter/material.dart';

class CustomEmoji extends StatelessWidget {
  const CustomEmoji({Key? key
    , required this.onTap
    , required this.emoji
    , required this.colorEmoji}) : super(key: key);
    final void Function()onTap;
    final String emoji;
    final Color colorEmoji;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: onTap,
      child: Container(
        foregroundDecoration: BoxDecoration(
            color: colorEmoji,
            backgroundBlendMode: BlendMode.saturation),
        child: Text(emoji,
            style: const TextStyle(
                fontSize: 57)),
      ),
    );
  }
}
