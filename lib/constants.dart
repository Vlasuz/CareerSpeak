import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const cBackgroundColor = Color(0xFFF2F3FA);
const cWhiteOrange = Color(0xFFAE978A);
const cWhite = Color(0xFFFFFFFF);
const cOrange = Color(0xFFFF8733);
const cBrown = Color(0xFF793708);
const cRed = Color(0xFFFD1111);
const cGreen = Color(0xFF2CB543);

class LanguagesList {
  final String title;
  final Image icon;

  LanguagesList({required this.title, required this.icon});
}
class UserLanguagesList {
  final String title;
  final String profession;
  final String level;
  final Image icon;
  final bool isActive;

  UserLanguagesList({required this.title, required this.isActive, required this.level, required this.profession, required this.icon});
}

class ProfessionsList {
  final String title;
  final Image image;

  ProfessionsList({required this.title, required this.image});
}

class NotificationsList {
  final String title;
  final String createdAt;
  final String message;
  final bool isNew;

  NotificationsList({required this.title, required this.createdAt, required this.isNew, required this.message});
}

class LevelList {
  final String title;

  LevelList({required this.title});
}
