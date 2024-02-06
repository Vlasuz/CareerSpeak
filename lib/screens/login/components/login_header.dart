import 'package:flutter/material.dart';

import '../../../constants.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Вхід',
          style: TextStyle(
            fontFamily: 'SFPro',
            fontWeight: FontWeight.w700,
            fontSize: 24.0,
          ),
        ),
        SizedBox(height: 6.0,),
        Text(
          'Привіт! Раді знову тебе бачити.',
          style: TextStyle(
            fontFamily: 'SFPro',
            color: cWhiteOrange,
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
