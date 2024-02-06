import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void ForgotPasswordSuccess(BuildContext context, String inputValue) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 388.0,
        decoration: BoxDecoration(
            color: Color(0xFFF2F3FA),
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0),
                child: Column(
                  children: [
                    SvgPicture.asset('assets/images/popup/mail.svg'),
                    Text(
                      'Інструкції відправлено',
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Color(0xFF282828),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Перейдіть до пошти ',
                          style: TextStyle(
                              color: Color(0xFF4E4E4E), fontSize: 16.0),
                          children: [
                            TextSpan(
                                text: inputValue,
                                style: TextStyle(fontWeight: FontWeight.w800)),
                            TextSpan(
                                text:
                                ' та виконайте інструкції з оновлення паролю'),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 88.0,
              color: cOrange,
              child: TextButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, '/password_recovery');
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                  minimumSize: MaterialStateProperty.all(Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  overlayColor: MaterialStateProperty.all(
                    Colors.orange,
                  ),
                ),
                child: const Text(
                  'Готово',
                  style: TextStyle(
                    color: cWhite,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}