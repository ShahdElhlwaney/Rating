import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rating_app/Core/Utils/app_router.dart';
import 'package:rating_app/Core/Utils/colors.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/skip_button.dart';
import '../../../../../Core/Widgets/button.dart';
import 'custom_client_response.dart';
class ClientSatisfiedResponseSection extends StatefulWidget {
  const ClientSatisfiedResponseSection({Key? key}) : super(key: key);
  @override
  State<ClientSatisfiedResponseSection> createState() => _ClientSatisfiedResponseSectionState();
}
class _ClientSatisfiedResponseSectionState extends State<ClientSatisfiedResponseSection> {
  List<Color>stateColors=[Colors.white,Colors.white,Colors.white];
  Color buttonColor=ColorsApp.notActiveMainColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomClientResponse(text: 'Very satisfied', color: stateColors[0], onTap: () {
              setState(() {
                stateColors=changeSatisfiedClientState(0);
              });
            },),
            const SizedBox(width: 16,),
            CustomClientResponse(text: 'Satisfied', color: stateColors[1], onTap: () {
              setState(() {
                stateColors=changeSatisfiedClientState(1);
              });
            },)
          ],
        ),
            const SizedBox(height: 16,),
            CustomClientResponse(text: 'Unsatisfied', color: stateColors[2], onTap: () {
              setState(() {
                stateColors=changeSatisfiedClientState(2);
              });
            },),
        const SizedBox(height: 32,),
        Button(text: 'Send', onPressed: () {
          GoRouter.of(context).push(AppRouter.kClientServicesView);
        },color: buttonColor,),
        const SizedBox(height: 16,),
        const SkipButton()
      ],
    );
  }
  List<Color> changeSatisfiedClientState(int index)
  {
    for(int i=0;i<3;i++) {
      if (i == index) {
        stateColors[index] = ColorsApp.activeClientResponseColor;
      }
      else {
        stateColors[i] = Colors.white;
      }
    }
    buttonColor=ColorsApp.mainColor;
    setState(() {});
    return stateColors;
  }
}
