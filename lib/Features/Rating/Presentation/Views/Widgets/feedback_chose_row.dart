import 'package:flutter/material.dart';
import 'package:rating_app/Core/Utils/colors.dart';
import 'custom_client_response.dart';
class FeedbackChoseRow extends StatefulWidget {
  const FeedbackChoseRow({Key? key}) : super(key: key);
  @override
  State<FeedbackChoseRow> createState() => _FeedbackChoseRowState();
}
class _FeedbackChoseRowState extends State<FeedbackChoseRow> {
  List<bool> isActive=[false,false];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width*.5,
          child: CustomClientResponse(
            text: 'The Stuff professionalism'
            , color:(isActive[0])?ColorsApp.activeClientResponseColor: Colors.white, onTap: () {
              isActive[0]=true;
              isActive[1]=false;
              setState(() {});
          },),
        ),
        const SizedBox(width: 16,),
        SizedBox(
          width: MediaQuery.of(context).size.width*.37,
          child: CustomClientResponse(
            text: 'Other'
            , color:(isActive[1])?ColorsApp.activeClientResponseColor: Colors.white, onTap: () {
            isActive[1]=true;
            isActive[0]=false;
            setState(() {});
          },),
        )
      ],
    );
  }
}
