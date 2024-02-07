import 'package:career_speak/screens/forgot_password/forgot_password.dart';
import 'package:career_speak/screens/login/login.dart';
import 'package:career_speak/screens/login_phone/login_phone.dart';
import 'package:career_speak/screens/password_recovery/password_recovery.dart';
import 'package:career_speak/screens/registration_info/registration_info.dart';
import 'package:career_speak/screens/registration_language/registration_language.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Login(),
        '/login_phone': (context) => const LoginPhone(),
        '/forgot_password': (context) => const ForgotPassword(),
        '/password_recovery': (context) => const PasswordRecovery(),
        '/registration_language': (context) => const RegistrationLanguage(),
        '/registration_info': (context) => const RegistrationInfo(),
      },
    );
  }
}
