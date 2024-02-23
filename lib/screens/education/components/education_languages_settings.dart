import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/registration_profession/components/registration_profession_list.dart';
import 'package:career_speak/screens/registration_schedule/components/registration_schedule_level.dart';
import 'package:career_speak/storage/professions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EducationLanguagesSettings extends StatefulWidget {
  const EducationLanguagesSettings({Key? key, required this.lang})
      : super(key: key);

  final UserLanguagesList lang;

  @override
  State<EducationLanguagesSettings> createState() =>
      _EducationLanguagesSettingsState();
}

class _EducationLanguagesSettingsState
    extends State<EducationLanguagesSettings> {
  int levelNumber = 0;
  int selectedIndex = 999;

  void initState() {
    super.initState();
    if (widget.lang.level == 'Початковий (А1)') {
      levelNumber = 1;
    } else if (widget.lang.level == 'Середній (А2)') {
      levelNumber = 2;
    } else if (widget.lang.level == 'Хороший (В1)') {
      levelNumber = 3;
    } else if (widget.lang.level == 'Просунутий (В2)') {
      levelNumber = 4;
    }

    selectedIndex =
        professions.indexWhere((e) => e.title == widget.lang.profession);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color(0xFFF2F3FA),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 51.0,
            ),
            SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        widget.lang.icon,
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.lang.title,
                              style: TextStyle(
                                color: Color(0xFF793708),
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'Налаштування',
                              style: TextStyle(
                                  color: Color(0xFF4E4E4E), fontSize: 16.0),
                            ),
                          ],
                        ),
                        Spacer(),
                        TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    vertical: 0.0, horizontal: 0)),
                            minimumSize: MaterialStateProperty.all(Size(0, 0)),
                            visualDensity: VisualDensity.compact,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child:
                              SvgPicture.asset('assets/images/cross_black.svg'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              width: 700.0,
              height: 1.0,
              color: Color(0xFFC7C7C7),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Рівень вивчення',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: cBrown,
                        fontWeight: FontWeight.w600),
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
                    height: 32.0,
                  ),
                  Text(
                    'Професія',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: cBrown,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.1,
                    child: RegistrationProfessionList(
                      selectedIndex: selectedIndex,
                      onIndexChanged: (int) {
                        setState(() {
                          selectedIndex = int;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
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
      ),
    );
  }
}
