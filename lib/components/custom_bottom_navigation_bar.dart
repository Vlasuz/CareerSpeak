import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/login');
      case 1:
        Navigator.pushNamed(context, '/profile_notifications');
      case 2:
        Navigator.pushNamed(context, '/profile_notifications');
      case 3:
        Navigator.pushNamed(context, '/profile');
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final bool isFavorite =
        ModalRoute.of(context)?.settings.name == '/profile_notifications';
    final bool isProfile = ModalRoute.of(context)?.settings.name == '/profile';

    if (isFavorite) {
      setState(() {
        _selectedIndex = 1;
      });
    } else if (isProfile) {
      setState(() {
        _selectedIndex = 3;
      });
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF414772).withOpacity(0.14),
            spreadRadius: 0,
            blurRadius: 14,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        child: BottomNavigationBar(
          elevation: 30.0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: cWhite,
          unselectedItemColor: cWhiteOrange,
          selectedIconTheme: IconThemeData(color: cOrange),
          unselectedIconTheme: IconThemeData(color: cWhiteOrange),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedLabelStyle: TextStyle(fontSize: 12.0, color: cOrange),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 8.0, top: 7.0),
                child: SvgPicture.asset(
                  'assets/images/bottom_bar/learn.svg',
                  width: 24.0,
                  height: 24.0,
                  color: _selectedIndex == 0 ? cOrange : cWhiteOrange,
                ),
              ),
              label: 'Навчання',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 8.0, top: 7.0),
                child: SvgPicture.asset(
                  'assets/images/bottom_bar/favorite.svg',
                  width: 24.0,
                  height: 24.0,
                  color: _selectedIndex == 1 ? cOrange : cWhiteOrange,
                ),
              ),
              label: 'Обране',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 8.0, top: 7.0),
                child: SvgPicture.asset(
                  'assets/images/bottom_bar/plan.svg',
                  width: 24.0,
                  height: 24.0,
                  color: _selectedIndex == 2 ? cOrange : cWhiteOrange,
                ),
              ),
              label: 'План навчання',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 8.0, top: 7.0),
                child: SvgPicture.asset(
                  'assets/images/bottom_bar/user.svg',
                  width: 24.0,
                  height: 24.0,
                  color: _selectedIndex == 3 ? cOrange : cWhiteOrange,
                ),
              ),
              label: 'Профіль',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
