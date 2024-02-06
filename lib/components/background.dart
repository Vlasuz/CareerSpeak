import 'package:flutter/material.dart';

import '../constants.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SafeArea(
            child: body,
          ),
        ),
      ),
    );
  }
}
