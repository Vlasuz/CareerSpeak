import 'package:career_speak/components/background.dart';
import 'package:career_speak/screens/login/components/login_bottom.dart';
import 'package:career_speak/screens/login/components/login_form.dart';
import 'package:career_speak/screens/login/components/login_header.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Background(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 21.0,),
          LoginHeader(),
          SizedBox(height: 41.0,),
          LoginForm(),
          SizedBox(height: 70.0,),
          LoginBottom(),
          SizedBox(height: 30.0,),
        ],
      )
    );
  }
}
