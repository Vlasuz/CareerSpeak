import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class LoginPhoneCode extends StatefulWidget {
  const LoginPhoneCode({Key? key}) : super(key: key);

  @override
  State<LoginPhoneCode> createState() => _LoginPhoneCodeState();
}

class _LoginPhoneCodeState extends State<LoginPhoneCode> {
  @override
  Widget build(BuildContext context) {
    return PinFieldAutoFill(
      currentCode: '',
      onCodeSubmitted: (c) {
        setState(() {
          // inputPhone = c ?? '';
        });
      },
      onCodeChanged: (c) {
        print('$c');
      },
      codeLength: 5,
      decoration: BoxLooseDecoration(
        textStyle: TextStyle(
          color: Color(0xFF4E4E4E),
          fontSize: 16.0,
        ),
        strokeColorBuilder:
        FixedColorBuilder(Colors.transparent),
        gapSpace: 8.0,
        bgColorBuilder: FixedColorBuilder(Colors.white),
      ),
    );
  }
}
