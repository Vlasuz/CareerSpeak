import 'package:career_speak/components/background.dart';
import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppOffline extends StatefulWidget {
  const AppOffline({Key? key}) : super(key: key);

  @override
  State<AppOffline> createState() => _AppOfflineState();
}

class _AppOfflineState extends State<AppOffline> {
  @override
  Widget build(BuildContext context) {
    return Background(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/offline.svg'),
          SizedBox(
            height: 38.0,
          ),
          Text(
            'Пристрій офлайн',
            style: TextStyle(
              color: cBrown,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            'Нажаль інтернет зник і контент не доступний',
            style: TextStyle(
              color: Color(0xFF4E4E4E),
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 31.0,
          ),
          Text(
            'Спробувати ще раз',
            style: TextStyle(
              color: Color(0xFF3A89FD),
              fontSize: 16.0,
            ),
          )
        ],
      ),
    );
  }
}
