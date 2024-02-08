import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';

class RegistrationScheduleDay extends StatefulWidget {
  const RegistrationScheduleDay({Key? key, required this.listOfWeek, required this.title, required this.setDay}) : super(key: key);

  final List <String>listOfWeek;
  final String title;
  final Function setDay;

  @override
  State<RegistrationScheduleDay> createState() => _RegistrationScheduleDayState();
}

class _RegistrationScheduleDayState extends State<RegistrationScheduleDay> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        widget.setDay();
        setState(() {
          if (widget.listOfWeek.contains(widget.title)) {
            widget.listOfWeek.remove(widget.title);
          } else {
            widget.listOfWeek.add(widget.title);
          }
        });
      },
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: 0,
          ),
        ),
        minimumSize:
        MaterialStateProperty.all(const Size(0, 0)),
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        overlayColor:
        MaterialStateProperty.all(Colors.transparent),
      ),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: widget.listOfWeek.contains(widget.title)
              ? Color(0xFF3A89FD)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
              color: widget.listOfWeek.contains(widget.title)
                  ? Color(0xFF3A89FD)
                  : cWhiteOrange),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            color: widget.listOfWeek.contains(widget.title)
                ? cWhite
                : Color(0xFF4E4E4E),
          ),
        ),
      ),
    );
  }
}
