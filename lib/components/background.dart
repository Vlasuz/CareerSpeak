import 'package:career_speak/components/custom_bottom_navigation_bar.dart';
import 'package:career_speak/constants.dart';
import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  const Background({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    final bool isNotLogin = ModalRoute.of(context)?.settings.name != '/login';

    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SafeArea(
            child: widget.body,
          ),
        ),
      ),
      bottomNavigationBar: isNotLogin ? CustomBottomNavigationBar() : null,
    );
  }
}
