import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rating_app/Core/Utils/app_router.dart';
import '../../../../../Core/Utils/colors.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../../Core/Widgets/button.dart';
import 'id_text_field.dart';

class StartRatingSection extends StatefulWidget {
  const StartRatingSection({Key? key}) : super(key: key);
  @override
  State<StartRatingSection> createState() => _StartRatingSectionState();
}
class _StartRatingSectionState extends State<StartRatingSection> {
  String? t;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
            alignment: Alignment.bottomLeft,
            child: Text('    Please enter your number or ID',style: Styles.textStyle12,)),
        const SizedBox(height: 8,),
        IdTextField(onChanged: (String text) {
          t=text;
          setState(() {
          });
        },),
        const SizedBox(height: 24,),
        Button(text: 'Start rate', onPressed: () {
          GoRouter.of(context).push(AppRouter.kEmojiView);
        },color: t==null?ColorsApp.notActiveMainColor:ColorsApp.mainColor,)
      ],
    );
  }
}
