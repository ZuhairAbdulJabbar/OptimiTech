import 'package:flutter/material.dart';
import 'package:optimitech/onboarding.dart';
main(){
  runApp(OptimiTechApp());
}

class OptimiTechApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
