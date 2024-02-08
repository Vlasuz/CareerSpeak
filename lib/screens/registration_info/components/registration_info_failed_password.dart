import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void registrationInfoFailedPassword(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    // isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        height: 388.0,
        decoration: BoxDecoration(
          color: Color(0xFFF2F3FA),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0),
                child: Column(
                  children: [
                    SvgPicture.asset('assets/images/popup/problem.svg'),
                    Text(
                      'Помилка',
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
                          text: 'Паролі не співпадають.',
                          style: TextStyle(
                              color: Color(0xFF4E4E4E), fontSize: 16.0),
                          children: []),
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
                  Navigator.pop(context);
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
                  'Спробувати ще раз',
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
