import 'package:career_speak/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileNotifications extends StatefulWidget {
  const ProfileNotifications({Key? key}) : super(key: key);

  @override
  State<ProfileNotifications> createState() => _ProfileNotificationsState();
}

class _ProfileNotificationsState extends State<ProfileNotifications> {
  bool teachEveryday = true;
  bool weekReport = true;
  bool interestingWordEveryDay = true;
  bool notifyForSubscribing = true;

  @override
  Widget build(BuildContext context) {
    return Background(
      body: Column(
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
              SizedBox(
                width: 20.0,
              ),
              Text(
                'Нотіфікації',
                style: TextStyle(
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w700,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            // margin: EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Щоденне навчання',
                  style: TextStyle(color: Color(0xFF282828), fontSize: 16.0),
                ),
                Switch.adaptive(
                  focusColor: Color(0xFF2CB543),
                  inactiveTrackColor: Color(0xFFC7C7C7),
                  applyCupertinoTheme: false,
                  value: teachEveryday,
                  onChanged: (bool value) {
                    setState(() {
                      teachEveryday = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            // margin: EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Звіт кожного тижня',
                  style: TextStyle(color: Color(0xFF282828), fontSize: 16.0),
                ),
                Switch.adaptive(
                  focusColor: Color(0xFF2CB543),
                  inactiveTrackColor: Color(0xFFC7C7C7),
                  applyCupertinoTheme: false,
                  value: weekReport,
                  onChanged: (bool value) {
                    setState(() {
                      weekReport = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            // margin: EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Цікаві слова щодня',
                  style: TextStyle(color: Color(0xFF282828), fontSize: 16.0),
                ),
                Switch.adaptive(
                  focusColor: Color(0xFF2CB543),
                  inactiveTrackColor: Color(0xFFC7C7C7),
                  applyCupertinoTheme: false,
                  value: interestingWordEveryDay,
                  onChanged: (bool value) {
                    setState(() {
                      interestingWordEveryDay = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Нагадування про підписку',
                  style: TextStyle(color: Color(0xFF282828), fontSize: 16.0),
                ),
                Switch.adaptive(
                  focusColor: Color(0xFF2CB543),
                  inactiveTrackColor: Color(0xFFC7C7C7),
                  applyCupertinoTheme: false,
                  value: notifyForSubscribing,
                  onChanged: (bool value) {
                    setState(() {
                      notifyForSubscribing = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
