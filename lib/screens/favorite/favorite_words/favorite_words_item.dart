import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteWordsItem extends StatelessWidget {
  const FavoriteWordsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: EdgeInsets.only(right: 24.0),
        decoration: BoxDecoration(
            color: cWhite,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF9B9B9B).withOpacity(0.14),
                offset: Offset(0, 2.0),
                blurRadius: 7.0,
              )
            ]),
        margin: EdgeInsets.only(top: 8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0)),
              child: Image.asset(
                'assets/images/fox.jpg',
                width: 80.0,
                height: 80.0,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Współlokator',
                  style: TextStyle(
                    color: cBrown,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0,),
                Text(
                  'Cпівмешканець',
                  style: TextStyle(
                    color: Color(0xFFA0A0A0),
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            Spacer(),
            SvgPicture.asset('assets/images/star_orange.svg'),
            SizedBox(
              width: 27.0,
            ),
            SvgPicture.asset(
                'assets/images/arrow_right_orange.svg')
          ],
        ),
      ),
    );
  }
}
