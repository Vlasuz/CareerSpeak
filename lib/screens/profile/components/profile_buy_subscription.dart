import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileBuySubscription extends StatefulWidget {
  const ProfileBuySubscription({Key? key}) : super(key: key);

  @override
  _ProfileBuySubscriptionState createState() => _ProfileBuySubscriptionState();
}

class _ProfileBuySubscriptionState extends State<ProfileBuySubscription> {
  String selectedTariff = 'month';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 507.0,
      decoration: BoxDecoration(
        color: Color(0xFFF2F3FA),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Color(0xFFC7C7C7),
            ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Купити підписку',
                  style: TextStyle(
                    color: Color(0xFF282828),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
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
                  child: SvgPicture.asset(
                    'assets/images/cross_black.svg',
                    width: 14.0,
                    height: 14.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 42.0,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedTariff = 'month';
                        });
                      },
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 8.0)),
                          minimumSize: MaterialStateProperty.all(Size(0, 0)),
                          visualDensity: VisualDensity.compact,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          overlayColor: MaterialStateProperty.all(
                            Colors.orange,
                          ),
                          side: MaterialStateProperty.all(
                              BorderSide(color: cWhite, width: 2.0)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                              ),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              selectedTariff == 'month' ? cOrange : cWhite)),
                      child: Text(
                        'Помісячно',
                        style: TextStyle(
                          color: selectedTariff == 'month'
                              ? cWhite
                              : Color(0xFFAE978A),
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 42.0,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedTariff = 'year';
                        });
                      },
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 8.0)),
                          minimumSize: MaterialStateProperty.all(Size(0, 0)),
                          visualDensity: VisualDensity.compact,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          overlayColor: MaterialStateProperty.all(
                            Colors.orange,
                          ),
                          side: MaterialStateProperty.all(
                              BorderSide(color: cWhite, width: 2.0)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                              ),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              selectedTariff == 'year' ? cOrange : cWhite)),
                      child: Text(
                        'Щорічно',
                        style: TextStyle(
                          color: selectedTariff == 'year'
                              ? cWhite
                              : Color(0xFFAE978A),
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 260.0,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF9B9B9B).withOpacity(0.14),
                          blurRadius: 7.0,
                          offset: Offset(0, 2.0),
                        )
                      ],
                    ),
                    child: Image.asset('assets/images/subscription_bgd.png'),
                  ),
                ),
                Positioned(
                  top: 67.0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                          'assets/images/subscription_icon_payment.svg'),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        selectedTariff == 'year'
                            ? 'Підписка на рік'
                            : 'Підписка на місяць',
                        style: TextStyle(
                          color: cWhite,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        selectedTariff == 'year' ? '\$14.99' : '\$4.99',
                        style: TextStyle(
                            color: cWhite,
                            fontSize: 64.0,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  color: Colors.black.withOpacity(0.25),
                                  blurRadius: 14.0,
                                  offset: Offset(0, 12.0))
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            height: 88.0,
            color: cOrange,
            child: TextButton(
              onPressed: () {
                // Navigator.pop(context);
                // Navigator.pushNamed(context, '/password_recovery');
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
                'Оформити',
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
