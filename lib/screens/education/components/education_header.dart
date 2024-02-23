import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/education/components/education_languages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class EducationHeader extends StatefulWidget {
  const EducationHeader({Key? key}) : super(key: key);

  @override
  State<EducationHeader> createState() => _EducationHeaderState();
}

class _EducationHeaderState extends State<EducationHeader> {
  int studyPercent = 31;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/languages/poland.png',
                    width: 56.0,
                    height: 56.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          EducationLanguages(context);
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Польська',
                              style: TextStyle(
                                color: Color(0xFF3A89FD),
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 9.0,),
                            SvgPicture.asset('assets/images/arrow_down_blue_mini.svg')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        'Лікар (В2)',
                        style:
                            TextStyle(color: Color(0xFF4E4E4E), fontSize: 16.0),
                      ),
                    ],
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
                      Navigator.pushNamed(context, '/notifications');
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 58.0,
                          height: 58.0,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: cWhite,
                              borderRadius: BorderRadius.circular(16.0),
                              boxShadow: [
                                BoxShadow(
                                  color: cOrange.withOpacity(0.14),
                                  offset: Offset(0, 2),
                                  blurRadius: 7.0,
                                )
                              ],
                            ),
                            child: SvgPicture.asset(
                              'assets/images/bell_orange.svg',
                              width: 24.0,
                              height: 24.0,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0.0,
                          right: 0.0,
                          child: Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500.0),
                              color: Color(0xFF3A89FD),
                            ),
                            child: Center(
                              child: Text(
                                '7',
                                style: TextStyle(
                                  color: cWhite,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 11.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 56.0,
                  ),
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width / 1.85,
                    animation: true,
                    lineHeight: 6.0,
                    animationDuration: 1000,
                    percent: studyPercent / 100,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: cOrange,
                    backgroundColor: Color(0xFFC7C7C7),
                  ),
                  Text(
                    '$studyPercent%',
                    style: TextStyle(
                      color: Color(0xFF4E4E4E),
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 16.0,),
        Container(
          width: 700.0,
          height: 1.0,
          color: Color(0xFFC7C7C7),
        ),
      ],
    );
  }
}
