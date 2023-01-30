// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';
import 'package:mealmonky/data/introdata.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key? key}) : super(key: key);
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var _controller;
  late int count;
  @override
  void initState() {
    _controller = PageController();
    count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mdq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: mdq.width,
        height: mdq.height,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 400,
                width: double.infinity,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        count = value;
                        print('========================');
                        print('${count}');
                        print('${value}');
                        print('========================');
                      });
                    },
                    itemCount: Intro.length,
                    itemBuilder: (context, index) {
                      intro us = Intro[index];
                      return Container(
                          child: Column(
                        children: [Image.asset('${us.Image}')],
                      ));
                    }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor:
                      count == 0 ? AppColor.Kmaincolor : AppColor.KaccentColor,
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor:
                      count == 1 ? AppColor.Kmaincolor : AppColor.KaccentColor,
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor:
                      count == 2 ? AppColor.Kmaincolor : AppColor.KaccentColor,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text('${Intro[count].title}',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('${Intro[count].doc}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: AppColor.KtherdColor)),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        child: Text('next'),
                        onPressed: (() {
                          Navigator.of(context)
                              .pushReplacementNamed('NavigationViewScreen');
                        })),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
