import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/registration_schedule/components/registration_schedule_level.dart';
import 'package:career_speak/screens/registration_schedule/components/registration_schedule_day.dart';
import 'package:career_speak/screens/registration_schedule/components/registration_schedule_header.dart';
import 'package:career_speak/screens/registration_schedule/components/registration_schedule_success.dart';
import 'package:career_speak/screens/registration_schedule/components/registration_schedule_time.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class RegistrationSchedule extends StatefulWidget {
  const RegistrationSchedule({Key? key}) : super(key: key);

  @override
  State<RegistrationSchedule> createState() => _RegistrationScheduleState();
}

class _RegistrationScheduleState extends State<RegistrationSchedule> {
  int levelNumber = 0;
  List listOfWeek = <String>[];
  int time = 0;

  @override
  Widget build(BuildContext context) {
    final bool isFormFill =
        levelNumber > 0 && listOfWeek.length > 0 && time > 0;

    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 21.0,
                    ),
                    RegistrationScheduleHeader(),
                    SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      'Оберіть потрібний рівень вивчення',
                      style: TextStyle(
                          color: cBrown,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RegistrationScheduleLevel(
                          setLevel: () {
                            setState(() {
                              levelNumber = 1;
                            });
                          },
                          chosenLevel: levelNumber,
                          title: 'Початковий (А1)',
                          level: 1,
                        ),
                        RegistrationScheduleLevel(
                          setLevel: () {
                            setState(() {
                              levelNumber = 2;
                            });
                          },
                          chosenLevel: levelNumber,
                          title: 'Середній (А2)',
                          level: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RegistrationScheduleLevel(
                          setLevel: () {
                            setState(() {
                              levelNumber = 3;
                            });
                          },
                          chosenLevel: levelNumber,
                          title: 'Хороший (В1)',
                          level: 3,
                        ),
                        RegistrationScheduleLevel(
                          setLevel: () {
                            setState(() {
                              levelNumber = 4;
                            });
                          },
                          chosenLevel: levelNumber,
                          title: 'Просунутий (В2)',
                          level: 4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    Text(
                      'Встанови щотижневий графік занять',
                      style: TextStyle(
                          color: cBrown,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RegistrationScheduleDay(
                          listOfWeek: [...listOfWeek],
                          title: 'Пн',
                          setDay: () {
                            setState(() {
                              if (listOfWeek.contains('Пн')) {
                                listOfWeek.remove('Пн');
                              } else {
                                listOfWeek.add('Пн');
                              }
                            });
                          },
                        ),
                        RegistrationScheduleDay(
                          listOfWeek: [...listOfWeek],
                          title: 'Вт',
                          setDay: () {
                            setState(() {
                              if (listOfWeek.contains('Вт')) {
                                listOfWeek.remove('Вт');
                              } else {
                                listOfWeek.add('Вт');
                              }
                            });
                          },
                        ),
                        RegistrationScheduleDay(
                          listOfWeek: [...listOfWeek],
                          title: 'Ср',
                          setDay: () {
                            setState(() {
                              if (listOfWeek.contains('Ср')) {
                                listOfWeek.remove('Ср');
                              } else {
                                listOfWeek.add('Ср');
                              }
                            });
                          },
                        ),
                        RegistrationScheduleDay(
                          listOfWeek: [...listOfWeek],
                          title: 'Чт',
                          setDay: () {
                            setState(() {
                              if (listOfWeek.contains('Чт')) {
                                listOfWeek.remove('Чт');
                              } else {
                                listOfWeek.add('Чт');
                              }
                            });
                          },
                        ),
                        RegistrationScheduleDay(
                          listOfWeek: [...listOfWeek],
                          title: 'Пт',
                          setDay: () {
                            setState(() {
                              if (listOfWeek.contains('Пт')) {
                                listOfWeek.remove('Пт');
                              } else {
                                listOfWeek.add('Пт');
                              }
                            });
                          },
                        ),
                        RegistrationScheduleDay(
                          listOfWeek: [...listOfWeek],
                          title: 'Сб',
                          setDay: () {
                            setState(() {
                              if (listOfWeek.contains('Сб')) {
                                listOfWeek.remove('Сб');
                              } else {
                                listOfWeek.add('Сб');
                              }
                            });
                          },
                        ),
                        RegistrationScheduleDay(
                          listOfWeek: [...listOfWeek],
                          title: 'Нд',
                          setDay: () {
                            setState(() {
                              if (listOfWeek.contains('Нд')) {
                                listOfWeek.remove('Нд');
                              } else {
                                listOfWeek.add('Нд');
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'Скільчи часу ти плануєш приділяти щоденно ',
                      style: TextStyle(
                          color: cBrown,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          left: 25.0,
                          right: 25.0,
                          top: 37.5,
                          child: Container(
                            height: 1.0,
                            decoration: BoxDecoration(color: cWhiteOrange),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RegistrationScheduleTime(
                              chosenTime: time,
                              time: 5,
                              setTime: () {
                                setState(() {
                                  time = 5;
                                });
                              },
                            ),
                            RegistrationScheduleTime(
                              chosenTime: time,
                              time: 10,
                              setTime: () {
                                setState(() {
                                  time = 10;
                                });
                              },
                            ),
                            RegistrationScheduleTime(
                              chosenTime: time,
                              time: 25,
                              setTime: () {
                                setState(() {
                                  time = 25;
                                });
                              },
                            ),
                            RegistrationScheduleTime(
                              chosenTime: time,
                              time: 45,
                              setTime: () {
                                setState(() {
                                  time = 45;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        time == 5
                            ? 'Лайтове навчання'
                            : time == 10
                                ? 'Нормальне навчання'
                                : time == 25
                                    ? 'Серйозне навчання'
                                    : time == 45
                                        ? 'Гіпер навчання'
                                        : '',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: cBrown,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 88.0,
              color: isFormFill ? cOrange : const Color(0xFFE1E1E1),
              child: TextButton(
                onPressed: () {
                  if (!isFormFill) return;

                  RegistrationScheduleSuccess(context);
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                  minimumSize: MaterialStateProperty.all(const Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  overlayColor: MaterialStateProperty.all(
                    isFormFill ? Colors.orange : Colors.transparent,
                  ),
                ),
                child: Text(
                  'Далі',
                  style: TextStyle(
                    color: isFormFill ? cWhite : const Color(0xFFA0A0A0),
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
  }
}
