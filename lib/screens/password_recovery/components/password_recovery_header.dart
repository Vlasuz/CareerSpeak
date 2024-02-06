import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordRecoveryHeader extends StatelessWidget {
  const PasswordRecoveryHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Оберіть новий пароль',
          style: TextStyle(
            fontFamily: 'SFPro',
            fontWeight: FontWeight.w700,
            fontSize: 24.0,
          ),
        ),
        SizedBox(
          height: 24.0,
        ),
        Text(
          'Впишіть пароль новий пароль і потім увійдіть в систему використовуючи його.',
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
