import 'dart:math';

import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/notifications/components/notifications_modal.dart';
import 'package:flutter/material.dart';

class NotificationsItem extends StatefulWidget {
  const NotificationsItem({Key? key, required this.itemData}) : super(key: key);

  final NotificationList itemData;

  @override
  State<NotificationsItem> createState() => _NotificationsItemState();
}

class _NotificationsItemState extends State<NotificationsItem> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
        minimumSize: MaterialStateProperty.all(Size(0, 0)),
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: () {
        NotificationsModal(context, widget.itemData);
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xFFC7C7C7),
              width: 1.0,
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 12.0,
                  height: 12.0,
                  decoration: BoxDecoration(
                      color:
                          widget.itemData.isNew ? cOrange : Colors.transparent,
                      borderRadius: BorderRadius.circular(60.0)),
                ),
                SizedBox(
                  width: 8.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 220.0,
                  child: Text(
                    widget.itemData.title,
                    style: TextStyle(
                      color: widget.itemData.isNew ? cBrown : Color(0xFF282828),
                      fontSize: 18.0,
                      fontWeight: widget.itemData.isNew
                          ? FontWeight.bold
                          : FontWeight.w600,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  widget.itemData.createdAt,
                  style: TextStyle(
                    color: Color(0xFFA0A0A0),
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 4.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Text(
                    widget.itemData.message,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF4E4E4E),
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
