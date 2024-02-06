import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Input extends StatefulWidget {
  const Input({
    Key? key,
    required this.placeholder,
    required this.icon,
    required this.setValue,
    this.isPassword = false,
    this.isError = false,
    this.controller,
  }) : super(key: key);

  final String placeholder;
  final SvgPicture icon;
  final Function setValue;
  final bool isPassword;
  final bool isError;
  final controller;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  bool _isFieldEmpty = true;
  // final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: widget.isError ? Colors.red : Colors.transparent, width: 1.0),
      ),
      child: Row(
        children: [
          widget.icon,
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: TextField(
              obscureText: widget.isPassword,
              controller: widget.controller,
              onChanged: (value) {
                widget.setValue(value);
                setState(() {
                  _isFieldEmpty = value.isEmpty;
                });
              },
              decoration: InputDecoration(
                labelText: _isFieldEmpty ? widget.placeholder : '',
                contentPadding: EdgeInsets.symmetric(vertical: 7.0),
                labelStyle: TextStyle(
                    color: _isFieldEmpty ? Color(0xFFA0A0A0) : Colors.white,
                    fontSize: 16.0),
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
