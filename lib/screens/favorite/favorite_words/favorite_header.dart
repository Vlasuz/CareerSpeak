import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';

class FavoriteHeader extends StatefulWidget {
  const FavoriteHeader({Key? key, required this.currentPageFunc}) : super(key: key);

  final Function currentPageFunc;

  @override
  State<FavoriteHeader> createState() => _FavoriteHeaderState();
}

class _FavoriteHeaderState extends State<FavoriteHeader> {
  String currentPage = 'dictionary';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            color: cWhite, borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 0),
                    ),
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            bottomLeft: Radius.circular(8.0)),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(Size(0, 0)),
                    visualDensity: VisualDensity.compact,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    overlayColor:
                    MaterialStateProperty.all(Colors.orange),
                    backgroundColor: MaterialStateProperty.all(
                        currentPage == 'dictionary'
                            ? cOrange
                            : cWhite)),
                onPressed: () {
                  setState(() {
                    currentPage = 'dictionary';
                    widget.currentPageFunc('dictionary');
                  });
                },
                child: Text(
                  'Словник',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: currentPage == 'dictionary'
                        ? cWhite
                        : cWhiteOrange,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 0),
                    ),
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0)),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(Size(0, 0)),
                    visualDensity: VisualDensity.compact,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    overlayColor:
                    MaterialStateProperty.all(Colors.orange),
                    backgroundColor: MaterialStateProperty.all(
                        currentPage == 'grammar' ? cOrange : cWhite)),
                onPressed: () {
                  setState(() {
                    currentPage = 'grammar';
                    widget.currentPageFunc('grammar');
                  });
                },
                child: Text(
                  'Граматика',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: currentPage == 'grammar'
                        ? cWhite
                        : cWhiteOrange,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
