import 'package:flutter/material.dart';
import 'package:web_rise_consulting/config/themes/rise_theme_fonts.dart';

import 'package:web_rise_consulting/feature/homepage/rise_home.dart';
import 'package:web_rise_consulting/main.dart';

class RiseHomeScreenTwo extends StatefulWidget {
  const RiseHomeScreenTwo({super.key, required bool isAutoscoll});

  @override
  State<RiseHomeScreenTwo> createState() => _RiseHomeScreenTwoState();

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: RiseTheme.themeData,
      home: const AboutPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _RiseHomeScreenTwoState extends State<RiseHomeScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return RiseHomeScreen(
      isAutoscoll: false,
    );
  }
}
