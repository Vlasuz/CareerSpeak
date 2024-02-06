import 'package:career_speak/components/input.dart';
import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/password_recovery/components/password_recovery_failed.dart';
import 'package:career_speak/screens/password_recovery/components/password_recovery_header.dart';
import 'package:career_speak/screens/password_recovery/components/password_recovery_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  String password = '';
  String passwordConfirm = '';

  @override
  Widget build(BuildContext context) {

    bool isFillAllInput = password.isNotEmpty && passwordConfirm.isNotEmpty;

    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 21.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    PasswordRecoveryHeader(),
                    SizedBox(
                      height: 24.0,
                    ),
                    Input(
                      placeholder: 'Пароль',
                      icon: SvgPicture.asset('assets/images/lock.svg'),
                      isPassword: true,
                      setValue: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                    SizedBox(height: 14.0,),
                    Input(
                      placeholder: 'Пароль ще раз',
                      icon: SvgPicture.asset('assets/images/lock.svg'),
                      isPassword: true,
                      setValue: (value) {
                        setState(() {
                          passwordConfirm = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 88.0,
              color: isFillAllInput ? cOrange : Color(0xFFE1E1E1),
              child: TextButton(
                onPressed: () {
                  if(!isFillAllInput) return;

                  if(password == passwordConfirm) {
                    PasswordRecoverySuccess(context);
                  } else {
                    PasswordRecoveryFailed(context);
                  }
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                  minimumSize: MaterialStateProperty.all(Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  overlayColor: MaterialStateProperty.all(
                    isFillAllInput ? Colors.orange : Colors.transparent,
                  ),
                ),
                child: Text(
                  'Оновити пароль',
                  style: TextStyle(
                    color: isFillAllInput ? cWhite : Color(0xFFA0A0A0),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
