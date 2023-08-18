import 'package:flutter/material.dart';
import 'package:rating_app/Core/Utils/colors.dart';
import 'package:rating_app/Features/Rating/Presentation/Views/Widgets/skip_button.dart';
import '../../../../../Core/Widgets/button.dart';
import 'custom_client_response.dart';
class ClientAddedServicesSection extends StatefulWidget {
  const ClientAddedServicesSection({Key? key}) : super(key: key);
  @override
  State<ClientAddedServicesSection> createState() => _ClientAddedServicesSectionState();
}
class _ClientAddedServicesSectionState extends State<ClientAddedServicesSection> {
 List<bool> isActive=[false,false,false,false];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomClientResponse(text: 'Customer Service'
              , color: isActive[0]?ColorsApp.activeClientResponseColor:Colors.white, onTap: () {
              setState(() {
                isActive[0]=!isActive[0];
              });
              },),
            CustomClientResponse(text: 'Teller'
              , color: isActive[1]?ColorsApp.activeClientResponseColor:Colors.white, onTap: () {
                setState(() {
                  isActive[1]=!isActive[1];
                });
              },)
          ],
        ),
        SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomClientResponse(text: 'Online Payment'
              , color: isActive[2]?ColorsApp.activeClientResponseColor:Colors.white, onTap: () {
              setState(() {
                isActive[2]=!isActive[2];
              });
              },),
            CustomClientResponse(text: 'Cancellation Policy'
                ,color: isActive[3]?ColorsApp.activeClientResponseColor:Colors.white
              , onTap: () {
                setState(() {
                  isActive[3]=!isActive[3];
                });
              },)
          ],
        ),
        const SizedBox(height: 87,),
        Button(text: 'Send', onPressed: () {  }
          ,color: !isActive[0]&&!isActive[1]&&!isActive[2]&&!isActive[3]?ColorsApp.notActiveMainColor:ColorsApp.mainColor,),
        const SizedBox(height: 16,),
        const SkipButton()
      ],
    );
  }
}
