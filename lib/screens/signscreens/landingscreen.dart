// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:mealmonky/const/clippath.dart';
import 'package:mealmonky/const/colors.dart';
import 'package:shadow_clip/shadow_clip.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: ClipShadow(
                    boxShadow: [
                      new BoxShadow(
                          color: AppColor.Kmaincolor,
                          offset: Offset(0, 10),
                          blurRadius: 7)
                    ],
                    clipper: KClippPathAppbar(),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.Kmaincolor,
                      ),
                      child: Image.asset(
                        'assets/images/virtual/login_bg.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/virtual/MealMonkeyLogo.png'),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .5,
                  padding: EdgeInsets.only(top: 90, left: 60, right: 60),
                  child: Column(
                    children: [
                      Flexible(
                        child: Text(
                          'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            child: Text('Login'),
                            onPressed: (() {
                              Navigator.of(context).pushNamed('LoginScreen');
                            })),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                shape: MaterialStateProperty.all(StadiumBorder(
                                    side: BorderSide(
                                        color: AppColor.Kmaincolor,
                                        width: 1.5))),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            child: Text(
                              'Creat an Account',
                              style: TextStyle(color: AppColor.Kmaincolor),
                            ),
                            onPressed: (() {
                              Navigator.pushNamed(context, 'SignUpScreen');
                            })),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
