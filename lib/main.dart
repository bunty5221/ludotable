import 'package:flutter/material.dart';
import 'package:ludotable/UI%20Screens/intro_screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ludo Table',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: CobaltBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
