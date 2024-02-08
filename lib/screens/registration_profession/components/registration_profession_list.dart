import 'package:career_speak/constants.dart';
import 'package:career_speak/storage/professions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationProfessionList extends StatefulWidget {
  const RegistrationProfessionList(
      {Key? key, required this.selectedIndex, required this.onIndexChanged})
      : super(key: key);

  final int selectedIndex;
  final Function(int) onIndexChanged;

  @override
  State<RegistrationProfessionList> createState() =>
      _RegistrationProfessionListState();
}

class _RegistrationProfessionListState
    extends State<RegistrationProfessionList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 301,
      child: ListView.builder(
        itemCount: professions.length,
        itemBuilder: (context, index) {
          final item = professions[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                widget.onIndexChanged(index);
              });
            },
            child: Container(
              margin: EdgeInsets.only(top: 16.0),
              padding: EdgeInsets.only(right: 16.0),
              decoration: BoxDecoration(
                color: widget.selectedIndex == index ? cOrange : cWhite,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), bottomLeft: Radius.circular(16.0)),
                    child: item.image,
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    width: MediaQuery.of(context).size.width - (widget.selectedIndex == index ? 180 : 148),
                    child: Text(
                      item.title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        color: widget.selectedIndex == index ? cWhite : cBrown,
                      ),
                    ),
                  ),
                  Spacer(),
                  widget.selectedIndex == index ? SvgPicture.asset('assets/images/brown_check.svg') : SizedBox(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
