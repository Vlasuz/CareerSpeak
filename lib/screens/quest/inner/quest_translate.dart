import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/quest/components/quest_favorite.dart';
import 'package:career_speak/screens/quest/components/quest_header.dart';
import 'package:career_speak/screens/quest/components/quest_modal_info.dart';
import 'package:career_speak/screens/quest/components/quest_modal_true.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class QuestTranslate extends StatefulWidget {
  const QuestTranslate({Key? key}) : super(key: key);

  @override
  State<QuestTranslate> createState() => _QuestTranslateState();
}

class _QuestTranslateState extends State<QuestTranslate> {
  late VideoPlayerController _controller;
  int chosenWord = 0;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/video_quest.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    QuestHeader(),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 34.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: cWhite,
                          ),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (_controller.value.isPlaying) {
                                      _controller.pause();
                                    } else {
                                      _controller.play();
                                    }
                                  });
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: _controller.value.isInitialized
                                      ? AspectRatio(
                                          aspectRatio:
                                              _controller.value.aspectRatio,
                                          child: VideoPlayer(_controller),
                                        )
                                      : CircularProgressIndicator(),
                                ),
                              ),
                              SizedBox(
                                height: 18.0,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 18.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (_controller.value.isPlaying) {
                                          _controller.pause();
                                        } else {
                                          _controller.play();
                                        }
                                      });
                                    },
                                    child: SvgPicture.asset(
                                        _controller.value.isPlaying
                                            ? 'assets/images/video_pause.svg'
                                            : 'assets/images/video_play.svg'),
                                  ),
                                  SizedBox(
                                    width: 14.0,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: SizedBox(
                                      height: 8.0,
                                      width: MediaQuery.of(context).size.width -
                                          100.0,
                                      child: VideoProgressIndicator(
                                        _controller,
                                        allowScrubbing: true,
                                        padding: EdgeInsets.zero,
                                        colors: VideoProgressColors(
                                          playedColor: cOrange,
                                          backgroundColor: Color(0xFFC7C7C7),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 34.0,
                              ),
                              Text(
                                'Як перекладається слово',
                                style: TextStyle(
                                    fontSize: 16.0, color: Color(0xFF4E4E4E)),
                              ),
                              SizedBox(height: 4.0,),
                              RichText(
                                text: TextSpan(
                                  text: 'Cześć',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    color: Color(0xFF282828),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [],
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
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 0)),
                          minimumSize: MaterialStateProperty.all(Size(0, 0)),
                          visualDensity: VisualDensity.compact,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          backgroundColor: MaterialStateProperty.all(
                              chosenWord == 1
                                  ? Color(0xFF3A89FD)
                                  : Colors.transparent)),
                      onPressed: () {
                        setState(() {
                          chosenWord = 1;
                          QuestModalInfo(context);
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                                color: chosenWord == 1
                                    ? Color(0xFF3A89FD)
                                    : cWhiteOrange,
                                width: 1.5)),
                        child: Text(
                          'się',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: chosenWord == 1 ? cWhite : Color(0xFF282828),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 0)),
                          minimumSize: MaterialStateProperty.all(Size(0, 0)),
                          visualDensity: VisualDensity.compact,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          backgroundColor: MaterialStateProperty.all(
                              chosenWord == 2
                                  ? Color(0xFF3A89FD)
                                  : Colors.transparent)),
                      onPressed: () {
                        setState(() {
                          chosenWord = 2;
                          QuestModalInfo(context);
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                                color: chosenWord == 2
                                    ? Color(0xFF3A89FD)
                                    : cWhiteOrange,
                                width: 1.5)),
                        child: Text(
                          'się',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: chosenWord == 2 ? cWhite : Color(0xFF282828),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 0)),
                          minimumSize: MaterialStateProperty.all(Size(0, 0)),
                          visualDensity: VisualDensity.compact,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          backgroundColor: MaterialStateProperty.all(
                              chosenWord == 3
                                  ? cGreen
                                  : Colors.transparent)),
                      onPressed: () {
                        setState(() {
                          chosenWord = 3;
                          QuestModalTrue(context);
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                                color: chosenWord == 3
                                    ? cGreen
                                    : cWhiteOrange,
                                width: 1.5)),
                        child: Text(
                          'się',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: chosenWord == 3 ? cWhite : Color(0xFF282828),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 0)),
                          minimumSize: MaterialStateProperty.all(Size(0, 0)),
                          visualDensity: VisualDensity.compact,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          backgroundColor: MaterialStateProperty.all(
                              chosenWord == 4
                                  ? Color(0xFF3A89FD)
                                  : Colors.transparent)),
                      onPressed: () {
                        setState(() {
                          chosenWord = 4;
                          QuestModalInfo(context);
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                                color: chosenWord == 4
                                    ? Color(0xFF3A89FD)
                                    : cWhiteOrange,
                                width: 1.5)),
                        child: Text(
                          'się',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: chosenWord == 4 ? cWhite : Color(0xFF282828),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
