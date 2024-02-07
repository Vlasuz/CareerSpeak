import 'package:career_speak/constants.dart';
import 'package:career_speak/storage/languages.dart';
import 'package:flutter/material.dart';

class RegistrationLanguageList extends StatefulWidget {
  const RegistrationLanguageList({Key? key, required this.selectedIndex, required this.onIndexChanged}) : super(key: key);

  final int selectedIndex;
  final Function(int) onIndexChanged;

  @override
  State<RegistrationLanguageList> createState() => _RegistrationLanguageListState();
}

class _RegistrationLanguageListState extends State<RegistrationLanguageList> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 267,
      child: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          final lang = languages[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                widget.onIndexChanged(index);
              });
            },
            child: Container(
              margin: EdgeInsets.only(top: 16.0),
              padding: EdgeInsets.fromLTRB(8.0, 16.0, 16.0, 16.0),
              decoration: BoxDecoration(
                color: widget.selectedIndex == index ? cOrange : cWhite,
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
                      color: widget.selectedIndex == index
                          ? cWhite
                          : cBrown,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
