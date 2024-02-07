import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';

class RegistrationLanguageHeader extends StatelessWidget {
  const RegistrationLanguageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Реєстрація',
          style: TextStyle(
            fontFamily: 'SFPro',
            fontWeight: FontWeight.w700,
            fontSize: 24.0,
          ),
        ),
        SizedBox(height: 6.0,),
        Text(
          'Ласкаво прошу! Давай знайомитись',
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
