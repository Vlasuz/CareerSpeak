import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/profile/components/profile_buy_subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileSubscription extends StatefulWidget {
  const ProfileSubscription({Key? key}) : super(key: key);

  @override
  State<ProfileSubscription> createState() => _ProfileSubscriptionState();
}

class _ProfileSubscriptionState extends State<ProfileSubscription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: cWhite,
            border: Border.all(color: Color(0xFFFF8733), width: 1.0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Row(
            children: [
              SvgPicture.asset('assets/images/subscription_icon.svg'),
              SizedBox(
                width: 24.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 166,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Раді тебе бачити!',
                      style: TextStyle(
                        color: cWhiteOrange,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 4.0,),
                    Text(
                      'Маєш 7 безкоштовних уроків.',
                      style: TextStyle(
                        color: cBrown,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 4.0,),
                    Text(
                      'Щоб мати необмежений доступ до уроків - оформи підписку.',
                      style: TextStyle(
                        color: Color(0xFF4E4E4E),
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 56.0,
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              ProfileBuySubscription();
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return ProfileBuySubscription();
                },
              );
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 0,
                ),
              ),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0)))),
              minimumSize: MaterialStateProperty.all(Size(0, 0)),
              visualDensity: VisualDensity.compact,
              backgroundColor: MaterialStateProperty.all(cOrange),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              overlayColor: MaterialStateProperty.all(
                Colors.orange,
              ),
            ),
            child: const Text(
              'Купити підписку',
              style: TextStyle(
                color: cWhite,
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }
}
