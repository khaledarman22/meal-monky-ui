// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';
import 'package:mealmonky/const/consttextformfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              Spacer(
                flex: 4,
              ),
              Text(
                'Login',
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.w300),
              ),
              Spacer(
                flex: 1,
              ),
              Text('Add your details to login',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: AppColor.KtherdColor)),
              Spacer(
                flex: 2,
              ),
              KTextFormFieldConst(hint: 'Your Email'),
              Spacer(
                flex: 1,
              ),
              KTextFormFieldConst(hint: 'Password'),
              Spacer(
                flex: 1,
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
              Spacer(
                flex: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'ResetPasswordScreen');
                },
                child: Text('Forgot your password?',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: AppColor.KtherdColor)),
              ),
              Spacer(
                flex: 2,
              ),
              Text('or Login With',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: AppColor.KtherdColor)),
              Spacer(
                flex: 1,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue[600])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/virtual/fb.png'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Login with Facebook')
                      ],
                    ),
                    onPressed: (() {
                      Navigator.of(context).pushNamed('LoginScreen');
                    })),
              ),
              Spacer(
                flex: 1,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.red[600])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/virtual/google.png'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Login with Facebook')
                      ],
                    ),
                    onPressed: (() {
                      Navigator.of(context).pushNamed('LoginScreen');
                    })),
              ),
              Spacer(flex: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont\'t have An Account?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: AppColor.KtherdColor)),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'SignUpScreen');
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: AppColor.Kmaincolor,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      )),
                ],
              ),
              Spacer(flex: 1),
            ]),
          ),
        ),
      ),
    );
  }
}
