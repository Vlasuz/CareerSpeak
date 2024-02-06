import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginBy extends StatelessWidget {
  const LoginBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 130.0,
                child: Divider(
                  color: Color(0xFFC7C7C7),
                  height: 1.0,
                ),
              ),
              Text(
                'або',
                style: TextStyle(
                    color: Color(0xFFAE978A),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0),
              ),
              Container(
                width: 130.0,
                child: Divider(
                  color: Color(0xFFC7C7C7),
                  height: 1.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 54.0,
          child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                minimumSize: MaterialStateProperty.all(Size(0, 0)),
                visualDensity: VisualDensity.compact,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                overlayColor: MaterialStateProperty.all(Colors.blue),
                backgroundColor:
                MaterialStateProperty.all(const Color(0xFF1877F2)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/facebook_white.svg'),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'Увійти через Facebook',
                    style: TextStyle(
                        color: cWhite,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
        ),
        SizedBox(
          height: 24.0,
        ),
        Container(
          height: 54.0,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                minimumSize: MaterialStateProperty.all(Size(0, 0)),
                visualDensity: VisualDensity.compact,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                overlayColor:
                MaterialStateProperty.all(Colors.black.withOpacity(0.1)),
                backgroundColor:
                MaterialStateProperty.all(const Color(0xFFFFFFFF)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/google_colorful.svg'),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'Увійти через Google',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.54),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
