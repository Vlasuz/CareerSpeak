import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileLegalInformation extends StatefulWidget {
  const ProfileLegalInformation({Key? key}) : super(key: key);

  @override
  _ProfileLegalInformationState createState() => _ProfileLegalInformationState();
}

class _ProfileLegalInformationState extends State<ProfileLegalInformation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color(0xFFF2F3FA),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Правова інформація',
                style: TextStyle(
                  color: Color(0xFF282828),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
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
          SizedBox(height: 24.0,),
          Text('Terms of Use', style: TextStyle(color: Color(0xFF282828), fontSize: 22.0, fontWeight: FontWeight.w600),),
          SizedBox(height: 21.0,),
          Text('The Terms and Conditions are nothing other than a contract in which the owner clarifies the conditions of use of its service. Some quick examples are the use of the content (copyright) , the rules that users must follow while interacting with one another on the website / app and, finally, rules related to the cancellation or suspension of a user’s account etc.', style: TextStyle(color: Color(0xFF282828), fontSize: 16.0),)
        ],
      ),
    );
  }
}
