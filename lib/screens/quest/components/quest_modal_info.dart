import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void QuestModalInfo(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    // isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        height: 483.0,
        decoration: BoxDecoration(
          color: Color(0xFFF2F3FA),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 16.0,
            ),
            SvgPicture.asset('assets/images/popup/man_three_orange.svg'),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Правильна відповідь',
              style: TextStyle(fontSize: 16.0, color: Color(0xFF4E4E4E)),
            ),
            SizedBox(
              height: 8.0,
            ),
            RichText(
              text: TextSpan(
                text: 'Cześć, jak ',
                style: TextStyle(
                    color: Color(0xFF282828),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'się',
                    style: TextStyle(
                      color: Color(0xFF3A89FD),
                    ),
                  ),
                  TextSpan(text: ' masz?'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: cWhite,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('speak');
                          },
                          child: SvgPicture.asset('assets/images/speaker.svg'),
                        ),
                        SizedBox(width: 13.0,),
                        Text(
                          'się',
                          style: TextStyle(
                            color: Color(0xFF282828),
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Text(
                      'скорочена форма займенника siebie (себе). Крім того, в дієсловах, аналогічно до українського постфікса «-ся», означає дію, яка направлена на себе',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF4E4E4E),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              height: 88.0,
              color: cOrange,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/quest/translate');
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
                  'Продовжити',
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
