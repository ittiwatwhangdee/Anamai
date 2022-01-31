import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_page.dart';
import 'splash_page.dart';
import 'login_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'SFProTH_regular'),
    debugShowCheckedModeBanner: false,
    // home: SplashScreen(),
    home: LoginPage(),
  ));
}
