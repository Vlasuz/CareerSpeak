import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuestFavorite extends StatefulWidget {
  const QuestFavorite({Key? key}) : super(key: key);

  @override
  State<QuestFavorite> createState() => _QuestFavoriteState();
}

class _QuestFavoriteState extends State<QuestFavorite> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -8.0,
      right: -8.0,
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
            color: cWhite,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                  color: cOrange.withOpacity(0.14),
                  offset: Offset(0, 2.0),
                  blurRadius: 7.0)
            ]),
        child: Center(
          child: SvgPicture.asset('assets/images/star_favorite_orange.svg'),
        ),
      ),
    );
  }
}
