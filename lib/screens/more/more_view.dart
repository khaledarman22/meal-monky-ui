import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealmonky/data/fooddata.dart';
import 'package:mealmonky/screens/about/about_us.dart';
import 'package:mealmonky/screens/car/car_view.dart';
import 'package:mealmonky/screens/profilepage/progilePageView.dart';

class MoreView extends StatelessWidget {
  MoreView({Key? key}) : super(key: key);
  dynamic food0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: null,
          leadingWidth: 0,
          title: const Text(
            'More',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/virtual/cart.png'))
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreem(),
                    ));
              },
              child: MoreBare(
                titel: 'Payment Details',
                image: const Image(
                  image: AssetImage('assets/images/virtual/user.png'),
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CarView(),
                    ));
              },
              child: MoreBare(
                titel: 'My Orders',
                image: const Image(
                  image: AssetImage('assets/images/virtual/bag.png'),
                  color: Colors.black,
                  width: 60,
                  height: 60,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: MoreBare(
                titel: 'Notifications',
                image: const Image(
                  image: AssetImage('assets/images/virtual/income.png'),
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: MoreBare(
                titel: 'Inbox',
                image: const Image(
                  image: AssetImage('assets/images/virtual/mail.png'),
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutUs()));
              },
              child: MoreBare(
                titel: 'About Us',
                image: const Image(
                  image: AssetImage('assets/images/virtual/info.png'),
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class MoreBare extends StatelessWidget {
  String titel;
  Image image;
  MoreBare({
    required this.titel,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[400],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[500],
                radius: 35,
                child: Container(width: 60, height: 60, child: image),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                '${titel}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              )
            ],
          ),
          Container(
            width: 20,
            child: Stack(clipBehavior: Clip.none, children: [
              Positioned(
                  top: 25,
                  right: -20,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[700],
                    ),
                    backgroundColor: Colors.grey[400],
                  ))
            ]),
          ),
        ],
      ),
    );
  }
}
