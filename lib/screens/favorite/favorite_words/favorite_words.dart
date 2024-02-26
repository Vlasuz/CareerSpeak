import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/favorite/favorite_words/favorite_words_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteWords extends StatefulWidget {
  const FavoriteWords({Key? key}) : super(key: key);

  @override
  State<FavoriteWords> createState() => _FavoriteWordsState();
}

class _FavoriteWordsState extends State<FavoriteWords> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Обрані слова',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF282828)),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 0),
                        ),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(8.0),
                          ),
                        ),
                        minimumSize:
                        MaterialStateProperty.all(Size(0, 0)),
                        visualDensity: VisualDensity.compact,
                        tapTargetSize:
                        MaterialTapTargetSize.shrinkWrap,
                        overlayColor: MaterialStateProperty.all(
                            Colors.orange),
                        backgroundColor:
                        MaterialStateProperty.all(cOrange)),
                    onPressed: () {},
                    child: Text(
                      'Вчити слова зі списку',
                      style: TextStyle(
                          color: cWhite,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        FavoriteWordsItem(),
        FavoriteWordsItem(),
        FavoriteWordsItem(),
        FavoriteWordsItem(),
      ],
    );
  }
}
