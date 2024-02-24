import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/quest/components/quest_favorite.dart';
import 'package:career_speak/screens/quest/components/quest_header.dart';
import 'package:flutter/material.dart';

class QuestText extends StatefulWidget {
  const QuestText({Key? key}) : super(key: key);

  @override
  State<QuestText> createState() => _QuestTextState();
}

class _QuestTextState extends State<QuestText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  QuestHeader(),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height - 288.0,
                        padding: EdgeInsets.only(bottom: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: cWhite,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 240.0,
                                  child: Image.asset('assets/images/fox.jpg', fit: BoxFit.cover,),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Польські “носувки”',
                                      style: TextStyle(
                                        fontSize: 24.0,
                                        color: Color(0xFF282828),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Польська мова – єдина слов’янська мова, яка під-час свого розвитку зберегла носові голосні: \nĄą – “о носове”, що вимовляється як /ɔw̃/, /ɔn/, /ɔm/, залежно від того, яку позицію відносно інших літер в слові займає. Звучить цей звук так, ніби ми хочемо сказати /о/ але через ніс. На приклад у слові idą (ідуть) читаємо наближено до /оу/. Однак в слові wąski (вузький) ą наближене до /он/, а в слові ząb (зуб) – читається як /ом/. \nĘę – “е носове”, вимовляється як /еw̃/, /еn/, /еm/, що теж залежить від сусідніх літер в слові. Звучить відповідно так, наче ми хочемо сказати звук /е/ через ніс. На приклад у слові mięso (м’ясо) ę вимовляється наближено до /еу/ з носовим резонансом. У слові zęby (зуби) вимовляємо /ем/, а у слові więcej (більше) – як /ен/.",
                                      style: TextStyle(
                                        color: Color(0xFF4E4E4E),
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      QuestFavorite()
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            height: 88.0,
            color: cOrange,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/education');
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                minimumSize: MaterialStateProperty.all(Size(0, 0)),
                visualDensity: VisualDensity.compact,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                overlayColor: MaterialStateProperty.all(
                  Colors.orange,
                ),
              ),
              child: const Text(
                'Готово',
                style: TextStyle(
                  color: cWhite,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
