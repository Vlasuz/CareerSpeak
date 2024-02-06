import 'package:career_speak/components/background.dart';
import 'package:career_speak/screens/login/components/login_bottom.dart';
import 'package:career_speak/screens/login/components/login_header.dart';
import 'package:career_speak/screens/login_phone/components/login_phone_form.dart';
import 'package:flutter/material.dart';

class LoginPhone extends StatefulWidget {
  const LoginPhone({Key? key}) : super(key: key);

  @override
  State<LoginPhone> createState() => _LoginPhoneState();
}

class _LoginPhoneState extends State<LoginPhone> {
  @override
  Widget build(BuildContext context) {
    return Background(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 21.0,),
            LoginHeader(),
            SizedBox(height: 41.0,),
            LoginPhoneForm(),
            SizedBox(height: 70.0,),
            LoginBottom(),
            SizedBox(height: 30.0,),
          ],
        )
    );
  }
}
