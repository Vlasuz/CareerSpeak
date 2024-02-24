import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QuestHeader extends StatefulWidget {
  const QuestHeader({Key? key}) : super(key: key);

  @override
  State<QuestHeader> createState() => _QuestHeaderState();
}

class _QuestHeaderState extends State<QuestHeader> {
  int studyPercent = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Урок 3',
                  style: TextStyle(
                    color: Color(0xFF282828),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  'Jak się masz?',
                  style: TextStyle(
                    color: Color(0xFF4E4E4E),
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                // Navigator.pushNamed(context, '/education');
              },
              child: SvgPicture.asset('assets/images/cross_black.svg'),
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Expanded(
              child: Transform.translate(
                offset: Offset(-4.0, 0),
                child: LinearPercentIndicator(
                  animation: true,
                  lineHeight: 6.0,
                  animationDuration: 1000,
                  percent: studyPercent / 100,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: cGreen,
                  backgroundColor: Color(0xFFC7C7C7),
                ),
              ),
            ),
            Text(
              '$studyPercent%',
              style: TextStyle(
                color: Color(0xFF4E4E4E),
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        SizedBox(height: 24.0),
      ],
    );
  }
}
