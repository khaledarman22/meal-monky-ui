import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';
import 'package:mealmonky/office/office_view.dart';
import 'package:mealmonky/screens/about/about_us.dart';
import 'package:mealmonky/screens/homepage/homepagescreen.dart';
import 'package:mealmonky/screens/more/more_view.dart';
import 'package:mealmonky/screens/profilepage/progilePageView.dart';
import 'package:mealmonky/screens/signscreens/loginscreen.dart';

class NavigationViewScreen extends StatefulWidget {
  NavigationViewScreen({Key? key}) : super(key: key);

  @override
  State<NavigationViewScreen> createState() => _NavigationViewScreenState();
}

class _NavigationViewScreenState extends State<NavigationViewScreen> {
  int celectedindex = 0;
  List<Widget> navrout = [
    HomePageScreen(),
    OfficeView(),
    AboutUs(),
    MoreView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            celectedindex = value;
          });
        },
        currentIndex: celectedindex,
        selectedIconTheme:
            const IconThemeData(color: AppColor.KaccentColor, size: 20),
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Color(0xff181A26),
              label: 'Home',
              icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(
              backgroundColor: Color(0xff181A26),
              label: 'Office',
              icon: Icon(Icons.shopify_outlined)),
          BottomNavigationBarItem(
              backgroundColor: Color(0xff181A26),
              label: 'About Us',
              icon: Icon(Icons.warning_amber_outlined)),
          BottomNavigationBarItem(
              backgroundColor: Color(0xff181A26),
              label: 'More',
              icon: Icon(Icons.menu)),
        ],
      ),
      body: navrout.elementAt(celectedindex),
    );
  }
}
