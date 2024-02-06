import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';

class LoginBottom extends StatelessWidget {
  const LoginBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/forgot_password');
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
              minimumSize: MaterialStateProperty.all(Size(0, 0)),
              visualDensity: VisualDensity.compact,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            ),
            child: Text(
              'Забув пароль?',
              style: TextStyle(
                color: Color(0xFF3A89FD),
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(
            height: 26.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Не маєте акаунту? ',
                style: TextStyle(
                  color: cWhiteOrange,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                  minimumSize: MaterialStateProperty.all(Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                child: Text(
                  'Створити безкоштовно',
                  style: TextStyle(
                    color: Color(0xFF3A89FD),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
