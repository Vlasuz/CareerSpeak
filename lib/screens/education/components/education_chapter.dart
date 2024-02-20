import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/education/components/education_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EducationChapter extends StatefulWidget {
  const EducationChapter({Key? key, this.chapterStatus = 'start', required this.chapterTitle}) : super(key: key);

  final String chapterStatus;
  final String chapterTitle;

  @override
  State<EducationChapter> createState() => _EducationChapterState();
}

class _EducationChapterState extends State<EducationChapter> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chapterTitle,
                  style: TextStyle(
                      color: Color(0xFF793708),
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Row(
                  children: [
                    widget.chapterStatus == 'done' ? Container(
                      width: 16.0,
                      height: 16.0,
                      margin: EdgeInsets.only(right: 4.0),
                      padding: EdgeInsets.all(3.5),
                      decoration: BoxDecoration(
                          color: cGreen,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: SvgPicture.asset(
                        'assets/images/white_check.svg',
                        width: 10.0,
                      ),
                    ) : SizedBox(),
                    Text(
                      widget.chapterStatus == 'start' ? 'Почніть навчання' : widget.chapterStatus == 'process' ? 'Ви пройшли 2 з 48 уроків' : widget.chapterStatus == 'done' ? 'Розділ пройдено' : '',
                      style: TextStyle(color: widget.chapterStatus == 'done' ? cGreen : Color(0xFF7A7A7A), fontSize: 16.0),
                    )
                  ],
                )
              ],
            ),
            TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                minimumSize: MaterialStateProperty.all(Size(0, 0)),
                visualDensity: VisualDensity.compact,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                setState(() {
                  isOpen = !isOpen;
                });
              },
              child: Container(
                width: 50.0,
                height: 50.0,
                padding: EdgeInsets.all(19.0),
                decoration: BoxDecoration(
                    color: cWhite,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFD86B1F).withOpacity(0.14),
                          offset: Offset(0, 2.0),
                          blurRadius: 7.0)
                    ]),
                child: Transform.rotate(angle: isOpen ? 0 : 3.1, child: SvgPicture.asset('assets/images/arrow_top_orange.svg'),),
              )
            ),
          ],
        ),
        isOpen ? Column(
          children: [
            EducationItem(lessonType: "done"),
            EducationItem(lessonType: "done"),
            EducationItem(lessonType: "process"),
            EducationItem(),
            EducationItem(lessonType: "locked"),
            EducationItem(lessonType: "locked"),
          ],
        ) : SizedBox(),
        SizedBox(
          height: 16.0,
        ),
        Container(
          width: 700.0,
          height: 1.0,
          color: Color(0xFFC7C7C7),
        ),
        SizedBox(
          height: 16.0,
        ),
      ],
    );
  }
}
