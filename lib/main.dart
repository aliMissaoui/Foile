import 'package:flutter/material.dart';
import 'package:foile/src/global/utils/constants.dart';

import 'src/modules/auth/login/view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ConstantsHelper.appName,
      theme: ThemeData(
        fontFamily: ConstantsHelper.montserratFont,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
