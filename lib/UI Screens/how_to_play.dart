import 'package:flutter/material.dart';

class HowtoPlay extends StatefulWidget {
  const HowtoPlay({Key? key}) : super(key: key);

  @override
  State<HowtoPlay> createState() => _HowtoPlayState();
}

class _HowtoPlayState extends State<HowtoPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("how to play"),
        ],
      ),
    );
  }
}
