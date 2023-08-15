import 'package:flutter/material.dart';

import 'Features/Splash/Presentation/Views/Widgets/splash.dart';
import 'Features/Splash/Presentation/Views/splash1_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Splash()
    );
  }
}



