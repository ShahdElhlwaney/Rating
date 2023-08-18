


import 'package:flutter/material.dart';

import 'Widgets/emoji_view_body.dart';

class EmojiView extends StatelessWidget {
  const EmojiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: EmojiViewBody()) ,
    );
  }
}
