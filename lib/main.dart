import 'package:flutter/material.dart';
import 'package:rating_app/Core/Utils/app_router.dart';

import 'Features/Splash/Presentation/Views/Widgets/splash.dart';
import 'Features/Splash/Presentation/Views/splash1_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      //home: Splash(),
      routerConfig: AppRouter.router,
    );
  }
}



