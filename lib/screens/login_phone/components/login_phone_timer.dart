import 'dart:async';

import 'package:flutter/material.dart';

class LoginPhoneTimer extends StatefulWidget {
  const LoginPhoneTimer({Key? key}) : super(key: key);

  @override
  State<LoginPhoneTimer> createState() => _LoginPhoneTimerState();
}

class _LoginPhoneTimerState extends State<LoginPhoneTimer> {

  int countdown = 12; // Начальное значение таймера в секундах
  late Timer _timer; // Таймер

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '(доступно через ${countdown ~/ 60 < 10 ? '0${countdown ~/ 60}' : countdown ~/ 60}:${countdown % 60 < 10 ? '0${countdown % 60}' : countdown % 60})', // Преобразование секунд в минуты и секунды
      style: TextStyle(color: Color(0xFFA0A0A0)),
    );
  }

  // Функция для запуска таймера
  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (countdown > 0) {
          countdown--;
        } else {
          timer.cancel(); // Остановка таймера, если время истекло
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Остановка таймера при уничтожении виджета
    super.dispose();
  }
}
