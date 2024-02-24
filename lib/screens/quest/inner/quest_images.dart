import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/quest/components/quest_favorite.dart';
import 'package:career_speak/screens/quest/components/quest_header.dart';
import 'package:career_speak/screens/quest/components/quest_modal_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class QuestImages extends StatefulWidget {
  const QuestImages({Key? key}) : super(key: key);

  @override
  State<QuestImages> createState() => _QuestImagesState();
}

class _QuestImagesState extends State<QuestImages> {
  late VideoPlayerController _controller;
  int chosenImage = 0;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/video_quest.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 88.0,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      QuestHeader(),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(bottom: 10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: cWhite,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  child: Text(
                                    'Завдання: \nОбери правильну ілюстрацію до слова',
                                    style: TextStyle(
                                        fontSize: 16.0, color: Color(0xFF4E4E4E)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          QuestFavorite()
                        ],
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12.0,
                          mainAxisSpacing: 12.0,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  chosenImage = 1;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: chosenImage == 1 ? cOrange : cWhiteOrange,
                                    width: 1.5
                                  ),
                                  color: chosenImage == 1 ? cOrange : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8.0)
                                ),
                                child: Image.asset('assets/images/fox.jpg', width: 160.0, height: 160.0,),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  chosenImage = 2;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: chosenImage == 2 ? cOrange : cWhiteOrange,
                                    width: 1.5
                                  ),
                                  color: chosenImage == 2 ? cOrange : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8.0)
                                ),
                                child: Image.asset('assets/images/fox.jpg', width: 160.0, height: 160.0,),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  chosenImage = 3;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: chosenImage == 3 ? cOrange : cWhiteOrange,
                                    width: 1.5
                                  ),
                                  color: chosenImage == 3 ? cOrange : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8.0)
                                ),
                                child: Image.asset('assets/images/fox.jpg', width: 160.0, height: 160.0,),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  chosenImage = 4;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: chosenImage == 4 ? cOrange : cWhiteOrange,
                                    width: 1.5
                                  ),
                                  color: chosenImage == 4 ? cOrange : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8.0)
                                ),
                                child: Image.asset('assets/images/fox.jpg', width: 160.0, height: 160.0,),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Spacer(),
          Container(
            width: double.infinity,
            height: 88.0,
            color: chosenImage > 0 ? cOrange : Color(0xFFE1E1E1),
            child: TextButton(
              onPressed: () {
                if(chosenImage == 0) return;

                Navigator.pushNamed(context, '/quest/write');
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                minimumSize: MaterialStateProperty.all(Size(0, 0)),
                visualDensity: VisualDensity.compact,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                overlayColor: MaterialStateProperty.all(
                  chosenImage > 0 ? Colors.orange : Color(0xFFE1E1E1),
                ),
              ),
              child: Text(
                'Продовжити',
                style: TextStyle(
                  color: chosenImage > 0 ? cWhite : Color(0xFFA0A0A0),
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
