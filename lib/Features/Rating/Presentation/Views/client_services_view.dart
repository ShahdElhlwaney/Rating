

import 'package:flutter/material.dart';

import 'Widgets/client_services_view_body.dart';

class ClientServicesView extends StatelessWidget {
  const ClientServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ClientServicesViewBody()),
    );
  }
}
