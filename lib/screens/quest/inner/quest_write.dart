import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/quest/components/quest_favorite.dart';
import 'package:career_speak/screens/quest/components/quest_header.dart';
import 'package:career_speak/screens/quest/components/quest_modal_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class QuestWrite extends StatefulWidget {
  const QuestWrite({Key? key}) : super(key: key);

  @override
  State<QuestWrite> createState() => _QuestWriteState();
}

class _QuestWriteState extends State<QuestWrite> {
  late VideoPlayerController _controller;
  int chosenWord = 0;
  TextEditingController _textEditingController = TextEditingController();
  bool _isEditing = false;
  String _enteredText = '';

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
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cześć, jak ',
                                      style: TextStyle(
                                        fontSize: 24.0,
                                        color: Color(0xFF282828),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    _isEditing ? Expanded(
                                      child: TextField(
                                        controller: _textEditingController,
                                        autofocus: true,
                                        decoration: InputDecoration(
                                          hintText: 'Введите текст...',
                                          border: OutlineInputBorder(),
                                        ),
                                        onSubmitted: (value) {
                                          setState(() {
                                            _isEditing = false;
                                            _enteredText = value;
                                          });
                                        },
                                      ),
                                    ) :
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _isEditing = true;
                                        });
                                      },
                                      child: Text(
                                        _enteredText.isNotEmpty ? _enteredText : '____',
                                        style: TextStyle(
                                          fontSize: 24.0,
                                          color: Color(0xFF3A89FD),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' masz?',
                                      style: TextStyle(
                                        fontSize: 24.0,
                                        color: Color(0xFF282828),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        QuestFavorite()
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            height: 88.0,
            color: _enteredText.isEmpty ? Color(0xFFE1E1E1) : cOrange,
            child: TextButton(
              onPressed: () {
                if(_enteredText.isEmpty) return;

                Navigator.pushNamed(context, '/quest/text');
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                minimumSize: MaterialStateProperty.all(Size(0, 0)),
                visualDensity: VisualDensity.compact,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                overlayColor: MaterialStateProperty.all(
                  _enteredText.isEmpty ? Colors.transparent : Colors.orange,
                ),
              ),
              child: Text(
                'Готово',
                style: TextStyle(
                  color: _enteredText.isEmpty ? Color(0xFFA0A0A0) : cWhite,
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
