import 'package:career_speak/constants.dart';
import 'package:flutter/cupertino.dart';

final List<UserLanguagesList> userLanguages = [
  UserLanguagesList(title: 'Італійська', icon: Image.asset('assets/images/languages/italia.png', width: 56.0, height: 56.0,), level: 'Просунутий (В2)', profession: 'Лікар', isActive: true,),
  UserLanguagesList(title: 'Французька', icon: Image.asset('assets/images/languages/france.png', width: 56.0, height: 56.0,), level: 'Хороший (В1)', profession: 'Медичний реєстратор', isActive: false,),
  UserLanguagesList(title: 'Японська', icon: Image.asset('assets/images/languages/japan.png', width: 56.0, height: 56.0,), level: 'Середній (А2)', profession: 'Медсестра', isActive: false,),
];