import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void NotificationsModal(BuildContext context, NotificationsList itemData) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    // isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        height: 483.0,
        decoration: BoxDecoration(
          color: Color(0xFFF2F3FA),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.0, 16.0, 15.0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemData.title,
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Color(0xFF282828),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      itemData.createdAt,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFFA0A0A0),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      height: 266.0,
                      child: SingleChildScrollView(
                        child: Text(
                          itemData.message,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xFFA0A0A0),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                  'Прочитано',
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
      );
    },
  );
}
