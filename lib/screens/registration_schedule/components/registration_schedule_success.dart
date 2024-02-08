import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void RegistrationScheduleSuccess(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    // isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        height: 388.0,
        decoration: BoxDecoration(
          color: const Color(0xFFF2F3FA),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0),
                child: Column(
                  children: [
                    SvgPicture.asset('assets/images/popup/marshmello.svg'),
                    const Text(
                      'Вітааааааю!!!',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: cGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text:
                            'Процес створення акаунту успішно завершено. Тепер ти можеш почати навчання',
                        style:
                            TextStyle(color: Color(0xFF4E4E4E), fontSize: 16.0),
                        children: [],
                      ),
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
                  Navigator.pushNamed(context, '/profile');
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                  minimumSize: MaterialStateProperty.all(const Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  overlayColor: MaterialStateProperty.all(
                    Colors.orange,
                  ),
                ),
                child: const Text(
                  'Переглянути план навчання',
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
