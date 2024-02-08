import 'package:flutter/material.dart';

import '../../../constants.dart';

class RegistrationScheduleLevel extends StatefulWidget {
  const RegistrationScheduleLevel({Key? key, required this.setLevel, required this.chosenLevel, required this.title, required this.level}) : super(key: key);

  final Function setLevel;
  final int level;
  final int chosenLevel;
  final String title;

  @override
  State<RegistrationScheduleLevel> createState() => _RegistrationScheduleLevelState();
}

class _RegistrationScheduleLevelState extends State<RegistrationScheduleLevel> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          widget.setLevel();
        });
      },
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: 0,
          ),
        ),
        minimumSize: MaterialStateProperty.all(const Size(0, 0)),
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 10.0),
        decoration: BoxDecoration(
            color: widget.chosenLevel == widget.level ? cOrange : cWhite,
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(
                color: widget.chosenLevel == widget.level
                    ? cOrange
                    : cWhiteOrange)),
        child: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            color: widget.chosenLevel == widget.level ? cWhite : cOrange,
          ),
        ),
      ),
    );
  }
}
