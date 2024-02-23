import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/education/components/education_languages_delete.dart';
import 'package:career_speak/screens/education/components/education_languages_settings.dart';
import 'package:career_speak/storage/languages.dart';
import 'package:career_speak/storage/user_languages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void EducationLanguages(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height / 1.2,
        decoration: BoxDecoration(
          color: Color(0xFFF2F3FA),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Мови, які Ви вивчаєте',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF282828),
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                      minimumSize: MaterialStateProperty.all(Size(0, 0)),
                      visualDensity: VisualDensity.compact,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/images/cross_black.svg'),
                  ),
                ],
              ),
            ),
            Container(
              height: 1.0,
              color: Color(0xFFC7C7C7),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              height: (MediaQuery.of(context).size.height / 1.2 - 460.0),
              child: ListView.builder(
                itemCount: userLanguages.length,
                itemBuilder: (context, index) {
                  final lang = userLanguages[index];
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF7D7D7D).withOpacity(0.14),
                                offset: Offset(0, 4.0),
                                blurRadius: 7.0,
                              )
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Slidable(
                              key: const ValueKey(2),
                              startActionPane: ActionPane(
                                motion: const DrawerMotion(),
                                dismissible: DismissiblePane(onDismissed: () {
                                  Navigator.pop(context);
                                  EducationLanguagesDelete(context, lang);
                                }),
                                children: [
                                  SlidableAction(
                                    onPressed: (value) {
                                      Navigator.pop(context);
                                      EducationLanguagesDelete(context, lang);
                                    },
                                    backgroundColor: cRed,
                                    foregroundColor: Colors.white,
                                    icon: Icons.delete,
                                  ),
                                ],
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 88.0,
                                      padding: EdgeInsets.only(right: 17.0),
                                      decoration: BoxDecoration(
                                        color: lang.isActive ? cOrange : cWhite,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFF7D7D7D)
                                                .withOpacity(0.14),
                                            offset: Offset(0, 2.0),
                                            blurRadius: 7.0,
                                          )
                                        ],
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 6.0),
                                            child: lang.icon,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                lang.title,
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
                                                '${lang.profession} ${lang.level.substring(lang.level.indexOf('('))}',
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  color: lang.isActive
                                                      ? Color(0xFFFFF2E9)
                                                      : Color(0xFF4E4E4E),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                              // EducationLanguagesSettings(
                                              //     context, lang);

                                              showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                backgroundColor: Colors.transparent,
                                                builder: (BuildContext context) {
                                                  return EducationLanguagesSettings(lang: lang,);
                                                },
                                              );
                                            },
                                            child: SvgPicture.asset(
                                              'assets/images/gear.svg',
                                              color: lang.isActive
                                                  ? cWhite
                                                  : cOrange,
                                            ),
                                          ),
                                          SizedBox(
                                            width: !lang.isActive ? 23.0 : 0,
                                          ),
                                          !lang.isActive
                                              ? SvgPicture.asset(
                                                  'assets/images/arrow_right_orange.svg')
                                              : SizedBox()
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Доступні для вивчення',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFF282828),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 1.0,
              margin: EdgeInsets.only(top: 16.0),
              color: Color(0xFFC7C7C7),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              height: (MediaQuery.of(context).size.height / 1.2 - 350.0),
              child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  final lang = languages[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/registration_schedule');
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16.0),
                          padding: EdgeInsets.fromLTRB(8.0, 16.0, 16.0, 16.0),
                          decoration: BoxDecoration(
                            color: cWhite,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 6.0),
                                child: lang.icon,
                              ),
                              Text(
                                lang.title,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                  color: cBrown,
                                ),
                              ),
                              Spacer(),
                              SvgPicture.asset('assets/images/plus_orange.svg')
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
