import 'package:career_speak/components/input.dart';
import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/login/components/login_by.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String inputEmail = '';
  String inputPassword = '';
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Input(
          placeholder: 'Електронна пошта',
          icon: isError ? SvgPicture.asset('assets/images/email_red.svg') : SvgPicture.asset('assets/images/email.svg'),
          setValue: (value) {
            setState(() {
              inputEmail = value;
            });
          },
          isError: isError,
        ),
        SizedBox(height: 8.0),
        TextButton(
          onPressed: () {
             Navigator.pushNamed(context, '/login_phone');
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              minimumSize: MaterialStateProperty.all(Size(0, 0)),
              visualDensity: VisualDensity.compact,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(cBackgroundColor)),
          child: Text(
            'Використати номер мобільного',
            style: TextStyle(
              color: Color(0xFF3A89FD),
            ),
          ),
        ),
        SizedBox(height: 26.0),
        Input(
          placeholder: 'Пароль',
          icon: isError ? SvgPicture.asset('assets/images/lock_red.svg') : SvgPicture.asset('assets/images/lock.svg'),
          setValue: (value) {
            setState(() {
              inputPassword = value;
            });
          },
          isError: isError,
          isPassword: true,
        ),
        SizedBox(height: 8.0,),
        isError ? Text(
          'Не вірний пароль або електронна пошта',
          style: TextStyle(
            color: cRed,
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
          ),
        ) : SizedBox(),
        SizedBox(
          height: isError ? 41.0 : 60.0,
        ),
        Container(
          width: double.infinity,
          height: 56.0,
          child: TextButton(
            onPressed: () {
              setState(() {
                isError = false;
              });
              if (inputEmail.isEmpty || inputPassword.isEmpty) return;

              print('login');
              print('Email: $inputEmail');
              print('Pass: $inputPassword');

              if (inputEmail != 'asd@asd.asd' || inputPassword != '123') {
                setState(() {
                  isError = true;
                });
              }
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 15.0, horizontal: 0)),
              minimumSize: MaterialStateProperty.all(Size(0, 0)),
              visualDensity: VisualDensity.compact,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(
                  inputEmail.isEmpty || inputPassword.isEmpty
                      ? Colors.transparent
                      : Colors.orange),
              backgroundColor: MaterialStateProperty.all(
                  inputEmail.isEmpty || inputPassword.isEmpty
                      ? Color(0xFFE1E1E1)
                      : cOrange),
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
                color: inputEmail.isEmpty || inputPassword.isEmpty
                    ? Color(0xFFA0A0A0)
                    : cWhite,
              ),
            ),
          ),
        ),
        LoginBy(),
      ],
    );
  }
}
