import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';
import 'package:mealmonky/screens/about/about_us.dart';
import 'package:mealmonky/screens/homepage/homepagescreen.dart';
import 'package:mealmonky/screens/navigation_screen/navigation_screen.dart';
import 'package:mealmonky/screens/signscreens/checkmobilescreen.dart';
import 'package:mealmonky/screens/signscreens/creatnewpassword.dart';
import 'package:mealmonky/screens/signscreens/introscreen.dart';
import 'package:mealmonky/screens/signscreens/loginscreen.dart';
import 'package:mealmonky/screens/signscreens/resetpassword.dart';
import 'package:mealmonky/screens/signscreens/signupscreen.dart';
import 'package:mealmonky/screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder()),
                  backgroundColor:
                      MaterialStateProperty.all(AppColor.Kmaincolor)))),
      debugShowCheckedModeBanner: false,
      title: 'MealMonkey',
      home: splashscreen(),
      initialRoute: 'splashscreen',
      routes: {
        'splashscreen': (context) => splashscreen(),
        'LoginScreen': (context) => LoginScreen(),
        'SignUpScreen': (context) => SignUpScreen(),
        'ResetPasswordScreen': (context) => ResetPasswordScreen(),
        'checkmobilescreen': (context) => checkmobilescreen(),
        'CreatNewPassword': (context) => CreatNewPassword(),
        'IntroScreen': (context) => IntroScreen(),
        'HomePageScreen': (context) => HomePageScreen(),
        'NavigationViewScreen': (context) => NavigationViewScreen(),
        'AboutUs': (context) => AboutUs(),
      },
    );
  }
}
