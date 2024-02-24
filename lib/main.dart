import 'package:career_speak/screens/education/education.dart';
import 'package:career_speak/screens/forgot_password/forgot_password.dart';
import 'package:career_speak/screens/login/login.dart';
import 'package:career_speak/screens/login_phone/login_phone.dart';
import 'package:career_speak/screens/notifications/notifications.dart';
import 'package:career_speak/screens/password_recovery/password_recovery.dart';
import 'package:career_speak/screens/profile/components/profile_change_password.dart';
import 'package:career_speak/screens/profile/components/profile_edit.dart';
import 'package:career_speak/screens/profile/components/profile_notifications.dart';
import 'package:career_speak/screens/profile/profile.dart';
import 'package:career_speak/screens/quest/inner/quest_images.dart';
import 'package:career_speak/screens/quest/inner/quest_text.dart';
import 'package:career_speak/screens/quest/inner/quest_translate.dart';
import 'package:career_speak/screens/quest/inner/quest_true_false.dart';
import 'package:career_speak/screens/quest/inner/quest_word.dart';
import 'package:career_speak/screens/quest/inner/quest_words_order.dart';
import 'package:career_speak/screens/quest/inner/quest_write.dart';
import 'package:career_speak/screens/quest/quest.dart';
import 'package:career_speak/screens/registration_info/registration_info.dart';
import 'package:career_speak/screens/registration_language/registration_language.dart';
import 'package:career_speak/screens/registration_profession/registration_profession.dart';
import 'package:career_speak/screens/registration_schedule/registration_schedule.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Login(),
        '/login_phone': (context) => const LoginPhone(),
        '/forgot_password': (context) => const ForgotPassword(),
        '/password_recovery': (context) => const PasswordRecovery(),
        '/registration_language': (context) => const RegistrationLanguage(),
        '/registration_info': (context) => const RegistrationInfo(),
        '/registration_profession': (context) => const RegistrationProfession(),
        '/registration_schedule': (context) => const RegistrationSchedule(),
        '/education': (context) => const Education(),
        '/profile': (context) => const Profile(),
        '/profile_edit': (context) => const ProfileEdit(),
        '/profile_notifications': (context) => const ProfileNotifications(),
        '/profile_change_password': (context) => const ProfileChangePassword(),
        '/notifications': (context) => const Notifications(),
        '/quest': (context) => const Quest(),
        '/quest/word': (context) => const QuestWord(),
        '/quest/translate': (context) => const QuestTranslate(),
        '/quest/true_false': (context) => const QuestTrueFalse(),
        '/quest/words_order': (context) => const QuestWordsOrder(),
        '/quest/images': (context) => const QuestImages(),
        '/quest/write': (context) => const QuestWrite(),
        '/quest/text': (context) => const QuestText(),
      },
    );
  }
}
