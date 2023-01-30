// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mealmonky/screens/signscreens/landingscreen.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: double.infinity,
        nextScreen: LandingScreen(),
        duration: 10,
        splash: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/virtual/splashIcon.png'),
                    fit: BoxFit.cover)),
            child: SizedBox(
                width: 200,
                height: 500,
                child: Image.asset(
                  'assets/images/virtual/MealMonkeyLogo.png',
                )),
          ),
        ));
  }
}
