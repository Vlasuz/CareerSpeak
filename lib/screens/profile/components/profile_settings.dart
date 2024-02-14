import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/profile/components/profile_language.dart';
import 'package:career_speak/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  String selectedLanguage = systemLanguage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56.0,
          margin: EdgeInsets.only(top: 16.0),
          child: TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0)),
              minimumSize: MaterialStateProperty.all(Size(0, 0)),
              visualDensity: VisualDensity.compact,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: MaterialStateProperty.all(cWhite),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)))),
              overlayColor:
                  MaterialStateProperty.all(Colors.grey.withOpacity(.5)),
            ),
            onPressed: () {
              ProfileLanguage(
                setLanguage: (title) {
                  setState(() {
                    selectedLanguage = title;
                  });
                },
              );
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return ProfileLanguage(
                    setLanguage: (title) {
                      setState(() {
                        selectedLanguage = title;
                      });
                    },
                  );
                },
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Мова застосунку',
                  style: TextStyle(
                    color: cBrown,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  systemLanguage,
                  style: TextStyle(
                    color: Color(0xFF4E4E4E),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                SvgPicture.asset('assets/images/arrow_right_orange.svg')
              ],
            ),
          ),
        ),
        Container(
          height: 56.0,
          margin: EdgeInsets.only(top: 16.0),
          child: TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0)),
              minimumSize: MaterialStateProperty.all(Size(0, 0)),
              visualDensity: VisualDensity.compact,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: MaterialStateProperty.all(cWhite),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)))),
              overlayColor:
                  MaterialStateProperty.all(Colors.grey.withOpacity(.5)),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/profile_change_password');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Змінити пароль',
                  style: TextStyle(
                    color: cBrown,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SvgPicture.asset('assets/images/arrow_right_orange.svg')
              ],
            ),
          ),
        ),
        Container(
          height: 56.0,
          margin: EdgeInsets.only(top: 16.0),
          child: TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0)),
              minimumSize: MaterialStateProperty.all(Size(0, 0)),
              visualDensity: VisualDensity.compact,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: MaterialStateProperty.all(cWhite),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)))),
              overlayColor:
                  MaterialStateProperty.all(Colors.grey.withOpacity(.5)),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/profile_notifications');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Нотіфікації',
                  style: TextStyle(
                    color: cBrown,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SvgPicture.asset('assets/images/arrow_right_orange.svg')
              ],
            ),
          ),
        ),
        Container(
          height: 56.0,
          margin: EdgeInsets.only(top: 16.0),
          child: TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 16.0,
                ),
              ),
              minimumSize: MaterialStateProperty.all(Size(0, 0)),
              visualDensity: VisualDensity.compact,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: MaterialStateProperty.all(cWhite),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
              ),
              overlayColor:
                  MaterialStateProperty.all(Colors.grey.withOpacity(.5)),
            ),
            onPressed: () {
              // Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Запросити друзів',
                  style: TextStyle(
                    color: cBrown,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SvgPicture.asset('assets/images/arrow_right_orange.svg')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
