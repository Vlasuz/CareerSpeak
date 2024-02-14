import 'package:career_speak/components/background.dart';
import 'package:career_speak/constants.dart';
import 'package:career_speak/screens/profile/components/profile_header.dart';
import 'package:career_speak/screens/profile/components/profile_legal_information.dart';
import 'package:career_speak/screens/profile/components/profile_settings.dart';
import 'package:career_speak/screens/profile/components/profile_subscription.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Background(
      body: Column(
        children: [
          ProfileHeader(),
          SizedBox(height: 16.0,),
          ProfileSubscription(),
          SizedBox(height: 8.0,),
          ProfileSettings(),
          SizedBox(height: 32.0,),
          Row(
            children: [
              TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)),
                  minimumSize: MaterialStateProperty.all(Size(0, 0)),
                  visualDensity: VisualDensity.compact,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  ProfileLegalInformation();
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext context) {
                      return ProfileLegalInformation();
                    },
                  );
                },
                child: Text(
                  'Правова інформація',
                  style: TextStyle(
                    color: Color(0xFF3A89FD),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 32.0,),
        ],
      ),
    );
  }
}
