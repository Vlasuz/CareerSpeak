import 'package:career_speak/constants.dart';
import 'package:career_speak/state.dart';
import 'package:career_speak/storage/system_languages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileLanguage extends StatefulWidget {
  const ProfileLanguage({Key? key, required this.setLanguage}) : super(key: key);

  final Function setLanguage;

  @override
  _ProfileLanguageState createState() => _ProfileLanguageState();
}

class _ProfileLanguageState extends State<ProfileLanguage> {
  int selectedIndex = 999;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 589.0,
      decoration: BoxDecoration(
        color: Color(0xFFF2F3FA),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFC7C7C7),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Мова застосунку',
                  style: TextStyle(
                    color: Color(0xFF282828),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                    minimumSize: MaterialStateProperty.all(Size(0, 0)),
                    visualDensity: VisualDensity.compact,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    overlayColor: MaterialStateProperty.all(
                      Colors.orange,
                    ),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/cross_black.svg',
                    width: 14.0,
                    height: 14.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            height: 400.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
              itemCount: systemLanguages.length,
              itemBuilder: (context, index) {
                final lang = systemLanguages[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      systemLanguage = lang.title;
                      widget.setLanguage(lang.title);
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 16.0),
                    padding: EdgeInsets.fromLTRB(8.0, 16.0, 16.0, 16.0),
                    decoration: BoxDecoration(
                      color: systemLanguage == lang.title ? cOrange : cWhite,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 6.0),
                          child: lang.icon,
                        ),
                        Text(
                          lang.title,
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                            color: systemLanguage == lang.title
                                ? cWhite
                                : cBrown,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 24.0,
                          height: 24.0,
                          child: Center(
                            child: SvgPicture.asset(systemLanguage == lang.title ? 'assets/images/white_check.svg' : 'assets/images/arrow_right_orange.svg'),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            height: 88.0,
            color: cOrange,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                minimumSize: MaterialStateProperty.all(Size(0, 0)),
                visualDensity: VisualDensity.compact,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                overlayColor: MaterialStateProperty.all(
                  Colors.orange,
                ),
              ),
              child: const Text(
                'Зберегти',
                style: TextStyle(
                  color: cWhite,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
