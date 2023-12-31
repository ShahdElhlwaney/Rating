import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rating_app/Core/Utils/app_router.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/custom_emoji.dart';
import '../../../../../Core/Utils/colors.dart';
import '../../../../../Core/Widgets/button.dart';
class ChangeStateSection extends StatefulWidget {
  const ChangeStateSection({super.key,});
  @override
  State<ChangeStateSection> createState() => _ChangeStateSectionState();
}
class _ChangeStateSectionState extends State<ChangeStateSection> {
  List<Color>emojiesColor=[];
  @override
  void initState() {
    emojiesColor=[
      ColorsApp.inActiveEmojiColor
      ,ColorsApp.inActiveEmojiColor
      ,ColorsApp.inActiveEmojiColor
      ,ColorsApp.inActiveEmojiColor
    ];    super.initState();
  }
  Color buttonColor=ColorsApp.notActiveMainColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomEmoji(onTap: () {
              emojiesColor=changeEmojiState(0);
            }, emoji: '😫', colorEmoji: emojiesColor[0],),
            CustomEmoji(onTap: () {
              emojiesColor=changeEmojiState(1);
            }, emoji: '🙁', colorEmoji: emojiesColor[1],),
            CustomEmoji(onTap: () {
              emojiesColor=changeEmojiState(2);
            }, emoji: '🙂', colorEmoji: emojiesColor[2],),
            CustomEmoji(onTap: () {
                emojiesColor=changeEmojiState(3);
            }, emoji: '😍', colorEmoji: emojiesColor[3],)
          ],
        ),
        const SizedBox(height: 32,),
        Button(text: 'send', onPressed: () {
          GoRouter.of(context).push(AppRouter.kCheckSatisfiedView);
        },
          color: buttonColor,
        ),
      ],
    );
  }
  List<Color> changeEmojiState(int index)
  {
    for(int i=0;i<4;i++) {
      if (i == index) {
        emojiesColor[index] = ColorsApp.activeEmojiColor;
      }
      else {
        emojiesColor[i] = ColorsApp.inActiveEmojiColor;
      }
    }
    buttonColor=ColorsApp.mainColor;
    setState(() {});
    return emojiesColor;
  }
}