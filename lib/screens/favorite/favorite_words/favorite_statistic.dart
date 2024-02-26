import 'package:career_speak/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FavoriteStatistic extends StatefulWidget {
  const FavoriteStatistic({Key? key}) : super(key: key);

  @override
  State<FavoriteStatistic> createState() => _FavoriteStatisticState();
}

class _FavoriteStatisticState extends State<FavoriteStatistic> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ваш словник зараз:',
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF282828)),
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Container(
                width: 178.0,
                height: 178.0,
                child: Center(
                  child: Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 2,
                        child: PieChart(
                          PieChartData(
                            sections: [
                              PieChartSectionData(
                                color: Color(0xFF3A89FD),
                                value: 40,
                                title: '',
                                radius: 30,
                                // Уменьшаем радиус для каждой секции
                                titleStyle: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                              PieChartSectionData(
                                color: cGreen,
                                value: 30,
                                title: '',
                                radius: 30,
                                titleStyle: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                              PieChartSectionData(
                                color: Color(0xFFFFB801),
                                value: 20,
                                title: '',
                                radius: 30,
                                titleStyle: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ],
                            sectionsSpace: 0,
                            centerSpaceRadius: 60,
                            borderData:
                            FlBorderData(show: false),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text(
                              '248',
                              style: TextStyle(
                                color: Color(0xFF4E4E4E),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Слів загалом',
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
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 16.0,
                        height: 16.0,
                        decoration: BoxDecoration(
                            color: cGreen,
                            borderRadius:
                            BorderRadius.circular(4.0)),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                            color: cBrown,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        'Сильні слова',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF4E4E4E),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 16.0,
                        height: 16.0,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFB801),
                            borderRadius:
                            BorderRadius.circular(4.0)),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        '91',
                        style: TextStyle(
                            color: cBrown,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        'Середні слова',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF4E4E4E),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 16.0,
                        height: 16.0,
                        decoration: BoxDecoration(
                            color: Color(0xFF3A89FD),
                            borderRadius:
                            BorderRadius.circular(4.0)),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        '141',
                        style: TextStyle(
                            color: cBrown,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        'Слабкі слова',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF4E4E4E),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
