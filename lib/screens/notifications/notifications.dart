import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/notifications/components/notifications_item.dart';
import 'package:career_speak/storage/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Сповіщення',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF282828),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        'assets/images/cross_black.svg',
                        width: 14.0,
                        height: 14.0,
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: Color(0xFFC7C7C7),
                height: 1.0,
              ),
              Column(
                children: notifications.map((item) => NotificationsItem(itemData: item)).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
