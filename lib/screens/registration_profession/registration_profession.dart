import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/registration_profession/components/registration_profession_header.dart';
import 'package:career_speak/screens/registration_profession/components/registration_profession_list.dart';
import 'package:flutter/material.dart';

class RegistrationProfession extends StatefulWidget {
  const RegistrationProfession({Key? key}) : super(key: key);

  @override
  State<RegistrationProfession> createState() => _RegistrationProfessionState();
}

class _RegistrationProfessionState extends State<RegistrationProfession> {
  int selectedIndex = 999;

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
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 21.0,
                    ),
                    RegistrationProfessionHeader(),
                    SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      'Обери професію для курсу',
                      style: TextStyle(
                          color: cBrown,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    RegistrationProfessionList(
                      selectedIndex: selectedIndex,
                      onIndexChanged: (int) {
                        setState(() {
                          selectedIndex = int;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 88.0,
              color: isSelected ? cOrange : const Color(0xFFE1E1E1),
              child: TextButton(
                onPressed: () {
                  if (!isSelected) return;

                  Navigator.pushNamed(context, '/registration_schedule');
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                  minimumSize: MaterialStateProperty.all(const Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  overlayColor: MaterialStateProperty.all(
                    isSelected ? Colors.orange : Colors.transparent,
                  ),
                ),
                child: Text(
                  'Обрати',
                  style: TextStyle(
                    color:
                        isSelected ? cWhite : const Color(0xFFA0A0A0),
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
