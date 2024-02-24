import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/quest/components/quest_favorite.dart';
import 'package:career_speak/screens/quest/components/quest_header.dart';
import 'package:career_speak/screens/quest/components/quest_modal_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class QuestWordsOrder extends StatefulWidget {
  const QuestWordsOrder({Key? key}) : super(key: key);

  @override
  State<QuestWordsOrder> createState() => _QuestWordsOrderState();
}

class _QuestWordsOrderState extends State<QuestWordsOrder> {
  late VideoPlayerController _controller;
  List<String> wordsOrder = [];

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
      body: Column(
        children: [
          SingleChildScrollView(
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
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, right: 16.0),
                                child: Text(
                                  'Прослухай аудіо та вибери по черзі слова, відтворюючи речення',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 0)),
                              minimumSize:
                                  MaterialStateProperty.all(Size(0, 0)),
                              visualDensity: VisualDensity.compact,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              backgroundColor: MaterialStateProperty.all(
                                  wordsOrder.contains('się')
                                      ? Color(0xFF3A89FD)
                                      : Colors.transparent)),
                          onPressed: () {
                            setState(() {
                              if (wordsOrder.contains('się')) {
                                wordsOrder.remove('się');
                              } else {
                                wordsOrder.add('się');
                              }
                            });
                          },
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                        color: wordsOrder.contains('się')
                                            ? Color(0xFF3A89FD)
                                            : cWhiteOrange,
                                        width: 1.5)),
                                child: Text(
                                  'się',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: wordsOrder.contains('się')
                                        ? cWhite
                                        : Color(0xFF282828),
                                  ),
                                ),
                              ),
                              wordsOrder.contains('się') ? Positioned(
                                top: -13.0,
                                right: -11.0,
                                child: Container(
                                  width: 32.0,
                                  height: 32.0,
                                  decoration: BoxDecoration(
                                      color: cOrange,
                                      borderRadius: BorderRadius.circular(60.0)
                                  ),
                                  child: Center(
                                    child: Text(
                                      (wordsOrder.indexOf('się') + 1).toString(),
                                      style: TextStyle(
                                        color: cWhite,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ) : SizedBox(),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 0)),
                              minimumSize:
                                  MaterialStateProperty.all(Size(0, 0)),
                              visualDensity: VisualDensity.compact,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              backgroundColor: MaterialStateProperty.all(
                                  wordsOrder.contains('masz')
                                      ? Color(0xFF3A89FD)
                                      : Colors.transparent)),
                          onPressed: () {
                            setState(() {
                              if (wordsOrder.contains('masz')) {
                                wordsOrder.remove('masz');
                              } else {
                                wordsOrder.add('masz');
                              }
                            });
                          },
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                        color: wordsOrder.contains('masz')
                                            ? Color(0xFF3A89FD)
                                            : cWhiteOrange,
                                        width: 1.5)),
                                child: Text(
                                  'masz',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: wordsOrder.contains('masz')
                                        ? cWhite
                                        : Color(0xFF282828),
                                  ),
                                ),
                              ),
                              wordsOrder.contains('masz') ? Positioned(
                                top: -13.0,
                                right: -11.0,
                                child: Container(
                                  width: 32.0,
                                  height: 32.0,
                                  decoration: BoxDecoration(
                                    color: cOrange,
                                    borderRadius: BorderRadius.circular(60.0)
                                  ),
                                  child: Center(
                                    child: Text(
                                      (wordsOrder.indexOf('masz') + 1).toString(),
                                      style: TextStyle(
                                        color: cWhite,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ) : SizedBox(),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      vertical: 0.0, horizontal: 0)),
                              minimumSize:
                                  MaterialStateProperty.all(Size(0, 0)),
                              visualDensity: VisualDensity.compact,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              backgroundColor: MaterialStateProperty.all(
                                  wordsOrder.contains('Jak')
                                      ? Color(0xFF3A89FD)
                                      : Colors.transparent)),
                          onPressed: () {
                            setState(() {
                              if (wordsOrder.contains('Jak')) {
                                wordsOrder.remove('Jak');
                              } else {
                                wordsOrder.add('Jak');
                              }
                            });
                          },
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                        color: wordsOrder.contains('Jak')
                                            ? Color(0xFF3A89FD)
                                            : cWhiteOrange,
                                        width: 1.5)),
                                child: Text(
                                  'Jak',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: wordsOrder.contains('Jak')
                                        ? cWhite
                                        : Color(0xFF282828),
                                  ),
                                ),
                              ),
                              wordsOrder.contains('Jak') ? Positioned(
                                top: -13.0,
                                right: -11.0,
                                child: Container(
                                  width: 32.0,
                                  height: 32.0,
                                  decoration: BoxDecoration(
                                      color: cOrange,
                                      borderRadius: BorderRadius.circular(60.0)
                                  ),
                                  child: Center(
                                    child: Text(
                                      (wordsOrder.indexOf('Jak') + 1).toString(),
                                      style: TextStyle(
                                        color: cWhite,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ) : SizedBox(),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            height: 88.0,
            color: cOrange,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/quest/images');
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
                'Продовжити',
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
