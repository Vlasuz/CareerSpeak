import 'dart:async';

import 'package:career_speak/components/input.dart';
import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/login/components/login_by.dart';
import 'package:career_speak/screens/login_phone/components/login_phone_code.dart';
import 'package:career_speak/screens/login_phone/components/login_phone_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sms_autofill/sms_autofill.dart';

class LoginPhoneForm extends StatefulWidget {
  const LoginPhoneForm({Key? key}) : super(key: key);

  @override
  State<LoginPhoneForm> createState() => _LoginPhoneFormState();
}

class _LoginPhoneFormState extends State<LoginPhoneForm> {
  final _maskController = MaskedTextController(mask: '+38 000 000 00 00');
  String inputPhone = '';
  String inputCode = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Input(
          placeholder: 'Номер мобільного',
          icon: SvgPicture.asset('assets/images/phone.svg'),
          controller: _maskController,
          setValue: (value) {
            setState(() {
              inputPhone = value;
            });
          },
        ),
        SizedBox(height: 8.0),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              minimumSize: MaterialStateProperty.all(Size(0, 0)),
              visualDensity: VisualDensity.compact,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(cBackgroundColor)),
          child: Text(
            'Використати електронну пошту',
            style: TextStyle(
              color: Color(0xFF3A89FD),
            ),
          ),
        ),
        SizedBox(
          height: 26.0,
        ),
        Container(
          width: 242.0,
          height: 56.0,
          child: LoginPhoneCode(),
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          children: [
            TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  minimumSize: MaterialStateProperty.all(Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  overlayColor: MaterialStateProperty.all(cBackgroundColor)),
              onPressed: () {},
              child: Text(
                'Переслати смс код ',
                style: TextStyle(color: Color(0xFF7A7A7A)),
              ),
            ),
            LoginPhoneTimer()
          ],
        ),
        SizedBox(
          height: 33.0,
        ),
        Container(
          width: double.infinity,
          height: 56.0,
          child: TextButton(
            onPressed: () {
              // setState(() {
              //   isError = false;
              // });
              // if (inputEmail.isEmpty || inputPassword.isEmpty) return;
              //
              // print('login');
              // print('Email: $inputEmail');
              // print('Pass: $inputPassword');
              //
              // if (inputEmail != 'asd@asd.asd' || inputPassword != '123') {
              //   setState(() {
              //     isError = true;
              //   });
              // }
              print('Go to profile');
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 15.0, horizontal: 0)),
              minimumSize: MaterialStateProperty.all(Size(0, 0)),
              visualDensity: VisualDensity.compact,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(
                  inputPhone.length != 17
                      ? Colors.transparent
                      : Colors.orange),
              backgroundColor: MaterialStateProperty.all(
                  inputPhone.length != 17 ? Color(0xFFE1E1E1) : cOrange),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            child: Text(
              'Увійти',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w700,
                color: inputPhone.length != 17 ? Color(0xFFA0A0A0) : cWhite,
              ),
            ),
          ),
        ),
        LoginBy(),
      ],
    );
  }
}
