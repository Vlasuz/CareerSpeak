import 'package:career_speak/components/custom_bottom_navigation_bar.dart';
import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/favorite/favorite_words/favorite_header.dart';
import 'package:career_speak/screens/favorite/favorite_words/favorite_statistic.dart';
import 'package:career_speak/screens/favorite/favorite_words/favorite_words.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  String currentPage = 'dictionary'; // dictionary / grammar

  @override
  Widget build(BuildContext context) {
    final bool isNotLogin = ModalRoute.of(context)?.settings.name != '/login';

    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            FavoriteHeader(
              currentPageFunc: (value) {
                setState(() {
                  currentPage = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Divider(
                color: Color(0xFFC7C7C7),
                height: 1.0,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 213.0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 16.0,
                    ),
                    FavoriteStatistic(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(
                        color: Color(0xFFC7C7C7),
                        height: 1.0,
                      ),
                    ),
                    FavoriteWords(),
                    SizedBox(height: 16.0,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: isNotLogin ? CustomBottomNavigationBar() : null,
    );
  }
}
