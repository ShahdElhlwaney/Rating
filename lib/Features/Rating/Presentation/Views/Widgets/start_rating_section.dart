import 'package:flutter/material.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/text_field.dart';
import '../../../../../Core/Utils/colors.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../../Core/Widgets/button.dart';

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
        RatingTextField(onChanged: (String text) {
          t=text;
          setState(() {
          });
        },),
        const SizedBox(height: 24,),
        Button(text: 'Start rate', onPressed: () {  },color: t==null?ColorsApp.notActiveMainColor:ColorsApp.mainColor,)
      ],
    );
  }
}
