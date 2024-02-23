import 'package:career_speak/constants.dart';
import 'package:career_speak/storage/languages.dart';
import 'package:career_speak/storage/user_languages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:percent_indicator/percent_indicator.dart';

void EducationLanguagesDelete(
    BuildContext context, UserLanguagesList language) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height / 1.6,
        decoration: BoxDecoration(
          color: Color(0xFFF2F3FA),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              SizedBox(
                height: 24.0,
              ),
              SvgPicture.asset('assets/images/popup/man_warning.svg'),
              SizedBox(height: 8.0),
              Text(
                'Видалення курсу',
                style: TextStyle(
                  color: Color(0xFF282828),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Ви дійсно хочете видалити курс?',
                style: TextStyle(
                  color: Color(0xFF4E4E4E),
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 8.0),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Column(
                  children: [
                    Container(
                      height: 88.0,
                      padding: EdgeInsets.only(right: 17.0),
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: cWhite,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF7D7D7D).withOpacity(0.14),
                            offset: Offset(0, 2.0),
                            blurRadius: 7.0,
                          )
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 6.0),
                            child: language.icon,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                language.title,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                  color: cBrown,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                '${language.profession} ${language.level.substring(language.level.indexOf('('))}',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFF4E4E4E),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          LinearPercentIndicator(
                            // width: MediaQuery.of(context).size.width / 1.85,
                            width: 70.0,
                            animation: true,
                            lineHeight: 6.0,
                            animationDuration: 1000,
                            percent: 48 / 100,
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: cOrange,
                            backgroundColor: Color(0xFFFFF2E9),
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            '48%',
                            style: TextStyle(
                                color: Color(0xFF793708),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: double.infinity,
                height: 88.0,
                color: cWhite,
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
                      Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  child: const Text(
                    'Скасувати',
                    style: TextStyle(
                      color: cOrange,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 88.0,
                color: cRed,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 0,
                    )),
                    minimumSize: MaterialStateProperty.all(Size(0, 0)),
                    visualDensity: VisualDensity.compact,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    overlayColor: MaterialStateProperty.all(
                      Colors.red,
                    ),
                  ),
                  child: const Text(
                    'Видалити',
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
        ),
      );
    },
  );
}
