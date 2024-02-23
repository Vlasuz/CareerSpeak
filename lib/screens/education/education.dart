import 'package:career_speak/components/custom_bottom_navigation_bar.dart';
import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/education/components/education_chapter.dart';
import 'package:career_speak/screens/education/components/education_header.dart';
import 'package:career_speak/screens/education/components/education_item.dart';
import 'package:career_speak/screens/profile/components/profile_subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            EducationHeader(),
            Expanded(
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16.0,
                      ),
                      ProfileSubscription(),
                      SizedBox(
                        height: 16.0,
                      ),
                      EducationChapter(
                        chapterStatus: 'done',
                        chapterTitle: 'Розділ 1',
                      ),
                      EducationChapter(
                        chapterStatus: 'process',
                        chapterTitle: 'Розділ 2',
                      ),
                      EducationChapter(
                        chapterTitle: 'Розділ 3',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
