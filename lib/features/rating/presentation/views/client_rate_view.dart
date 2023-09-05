


import 'package:flutter/material.dart';
import 'package:rating_app/features/rating/presentation/views/widgets/client_rate_view_body.dart';


class ClientRateView extends StatelessWidget {
  const ClientRateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
         body: ClientRateViewBody(),
    );
  }
}
