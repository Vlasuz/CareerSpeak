import 'dart:ui';

import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:blur/blur.dart';

class EducationItem extends StatefulWidget {
  const EducationItem({
    Key? key,
    this.lessonType = "open",
  }) : super(key: key);

  final String lessonType;

  // open, locked, process, done

  @override
  State<EducationItem> createState() => _EducationItemState();
}

class _EducationItemState extends State<EducationItem> {
  int studyPercent = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16.0),
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFD86B1F).withOpacity(0.14),
            offset: Offset(0, 2.0),
            blurRadius: 7.0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    widget.lessonType == 'locked' ? Colors.grey : Colors.white,
                    widget.lessonType == 'locked' ? BlendMode.color : BlendMode.modulate,
                  ),
                  child: Image.asset(
                    'assets/images/dog.jpg',
                    width: 80.0,
                    height: 80.0,
                  ),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0),
                ),
              ),
              widget.lessonType == 'locked' ? Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: Blur(
                    blur: 2.5,
                    blurColor: cOrange.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(80.0),
                    child: Container(
                      width: 48.0,
                      height: 48.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0)),
                    ),
                  ),
                ),
              ) : SizedBox(),
              widget.lessonType == 'locked' ? Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: SvgPicture.asset('assets/images/lock_white.svg'),
                ),
              ) : SizedBox(),
            ],
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Урок 1',
                style: TextStyle(color: Color(0xFFA0A0A0), fontSize: 16.0),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Cześć',
                style: TextStyle(
                  color: widget.lessonType == 'locked'
                      ? Color(0xFFAE978A)
                      : cBrown,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Spacer(),
          widget.lessonType == 'process'
              ? Row(
                  children: [
                    SizedBox(
                      width: 56.0,
                    ),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width / 5,
                      animation: true,
                      lineHeight: 6.0,
                      animationDuration: 1000,
                      percent: studyPercent / 100,
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: cOrange,
                      backgroundColor: Color(0xFFFFF2E9),
                    ),
                    Text(
                      '$studyPercent%',
                      style: TextStyle(
                        color: cBrown,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              : SizedBox(),
          widget.lessonType == 'done'
              ? Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          color: cGreen,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: SvgPicture.asset(
                        'assets/images/white_check.svg',
                        width: 10.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                      decoration: BoxDecoration(
                          color: Color(0xFFFFF2E9),
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/star_orange.svg'),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            '5.0',
                            style: TextStyle(
                                color: cBrown,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
