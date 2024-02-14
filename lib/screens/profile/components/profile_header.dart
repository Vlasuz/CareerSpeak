import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: cWhite,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
                color: Color(0xFF9B9B9B).withOpacity(0.14),
                blurRadius: 7.0,
                offset: Offset(0, 2.0))
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0)),
                  minimumSize: MaterialStateProperty.all(Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  backgroundColor: MaterialStateProperty.all(cWhite),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)))),
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/profile_edit');
                },
                child: SvgPicture.asset('assets/images/pen.svg'),
              ),
              TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0)),
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
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/login',
                    (Route<dynamic> route) => false,
                  );
                },
                child: SvgPicture.asset('assets/images/logout.svg'),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Image.asset(
            'assets/images/profile_placeholder.png',
            width: 120.0,
            height: 120.0,
          ),
          SizedBox(height: 16.0),
          Text(
            'Байда Вишневецький',
            style: TextStyle(
              color: Color(0xFF4E4E4E),
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'username@gmail.com',
            style: TextStyle(
              color: Color(0xFF793708),
              fontSize: 16.0,
            ),
          ),
          // SizedBox(height: 28.0),
          // Text(
          //   'Наступне поновлення підписки 20.05.2024',
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     color: Color(0xFFA0A0A0),
          //     fontSize: 16.0,
          //   ),
          // ),
        ],
      ),
    );
  }
}
