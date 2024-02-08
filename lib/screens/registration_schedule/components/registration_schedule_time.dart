import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';

class RegistrationScheduleTime extends StatefulWidget {
  const RegistrationScheduleTime({Key? key, required this.chosenTime, required this.time, required this.setTime}) : super(key: key);

  final int chosenTime;
  final int time;
  final Function setTime;

  @override
  State<RegistrationScheduleTime> createState() => _RegistrationScheduleTimeState();
}

class _RegistrationScheduleTimeState extends State<RegistrationScheduleTime> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          widget.setTime();
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
      child: Column(
        children: [
          Text(
            '${widget.time} хв',
            style: TextStyle(
                color: Color(0xFF4E4E4E),
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            width: 24.0,
            height: 24.0,
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                color: cWhite,
                border: Border.all(
                  color: cWhiteOrange,
                ),
                borderRadius:
                BorderRadius.circular(50.0)),
            child: Container(
              decoration: BoxDecoration(
                color: widget.time == widget.chosenTime ? Color(0xFF3A89FD) : cWhite,
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
