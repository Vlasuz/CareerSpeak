import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/registration_language/components/registration_language_header.dart';
import 'package:career_speak/screens/registration_language/components/registration_language_list.dart';
import 'package:flutter/material.dart';

class RegistrationLanguage extends StatefulWidget {
  const RegistrationLanguage({Key? key}) : super(key: key);

  @override
  State<RegistrationLanguage> createState() => _RegistrationLanguageState();
}

class _RegistrationLanguageState extends State<RegistrationLanguage> {
  int selectedIndex = 9999;

  @override
  Widget build(BuildContext context) {

    final isSelected = selectedIndex != null && selectedIndex! >= 0 && selectedIndex! < 999;

    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 21.0,
                  ),
                  RegistrationLanguageHeader(),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    'Яку мови бажаєш вивчати?',
                    style: TextStyle(
                        color: cBrown,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0),
                  ),
                  RegistrationLanguageList(
                    selectedIndex: selectedIndex!,
                    onIndexChanged: (int index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 88.0,
              color: isSelected
                  ? cOrange
                  : Color(0xFFE1E1E1),
              child: TextButton(
                onPressed: () {
                  if(!isSelected) return;

                  Navigator.pushNamed(context, '/registration_info');
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                  minimumSize: MaterialStateProperty.all(Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  overlayColor: MaterialStateProperty.all(
                    isSelected
                        ? Colors.orange
                        : Colors.transparent,
                  ),
                ),
                child: Text(
                  'Обрати',
                  style: TextStyle(
                    color: isSelected
                        ? cWhite
                        : Color(0xFFA0A0A0),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
