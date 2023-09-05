



import 'package:flutter/material.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/welcome_rating_section.dart';

import '../../../../../Core/Utils/colors.dart';
import '../../../../../Core/Utils/styles.dart';
import 'client_added_services_section.dart';


class ClientServicesViewBody extends StatelessWidget {
  const ClientServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 54),
      child: SingleChildScrollView(
        child: Column(
          children: [
             WelcomeRatingSection(),
            SizedBox(height: 29,),
            Text('Which services do you want to be added?',style: Styles.textStyle16,),
            SizedBox(height: 3,),
           Text('you can select more than one',style: Styles.textStyle14.copyWith(
             color: ColorsApp.inActiveEmojiColor
           ),),
            SizedBox(height: 32,),
            const ClientAddedServicesSection()
          ],
        ),
      ),
    );
  }
}
