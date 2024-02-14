import 'package:career_speak/components/input.dart';
import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/forgot_password/components/forgot_password_failed.dart';
import 'package:career_speak/screens/forgot_password/components/forgot_password_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileChangePassword extends StatefulWidget {
  const ProfileChangePassword({Key? key}) : super(key: key);

  @override
  State<ProfileChangePassword> createState() => _ProfileChangePasswordState();
}

class _ProfileChangePasswordState extends State<ProfileChangePassword> {
  String inputEmail = '';

  @override
  Widget build(BuildContext context) {
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Змінити пароль',
                              style: TextStyle(
                                fontFamily: 'SFPro',
                                fontWeight: FontWeight.w700,
                                fontSize: 24.0,
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                                minimumSize: MaterialStateProperty.all(Size(0, 0)),
                                visualDensity: VisualDensity.compact,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                overlayColor: MaterialStateProperty.all(Colors.transparent),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: SvgPicture.asset('assets/images/cross_black.svg'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Text(
                          'Введи імейл на який зареєстровано акаунт і ми надішлемо детальні інструкції',
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            color: cWhiteOrange,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Input(
                      placeholder: 'Електронна пошта',
                      icon: SvgPicture.asset('assets/images/email.svg'),
                      setValue: (value) {
                        setState(() {
                          inputEmail = value;
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
              color: inputEmail.isNotEmpty ? cOrange : Color(0xFFE1E1E1),
              child: TextButton(
                onPressed: () {
                  if(inputEmail.isEmpty) return;

                  if(inputEmail == 'asd@asd.asd') {
                    ForgotPasswordSuccess(context, inputEmail);
                  } else {
                    ForgotPasswordFailed(context, inputEmail);
                  }
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                  minimumSize: MaterialStateProperty.all(Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  overlayColor: MaterialStateProperty.all(
                    inputEmail.isNotEmpty ? Colors.orange : Colors.transparent,
                  ),
                ),
                child: Text(
                  'Отримати інструкції',
                  style: TextStyle(
                    color: inputEmail.isNotEmpty ? cWhite : Color(0xFFA0A0A0),
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
