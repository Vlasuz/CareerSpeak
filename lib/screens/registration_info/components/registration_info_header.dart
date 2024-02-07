import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationInfoHeader extends StatelessWidget {
  const RegistrationInfoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
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
              child: SvgPicture.asset('assets/images/arrow_left_black.svg'),
            ),
            SizedBox(width: 20.0,),
            Text(
              'Знайомство',
              style: TextStyle(
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w700,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24.0,
        ),
        Text(
          'Ще кілька кроків і ми почнемо навчання',
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
