import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';
import 'package:mealmonky/const/consttextformfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(left: 60, right: 60),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.w300),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text('Add your details to Sign Up',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: AppColor.KtherdColor)),
                  Spacer(
                    flex: 2,
                  ),
                  KTextFormFieldConst(
                    hint: 'Name',
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  KTextFormFieldConst(
                    hint: 'Email',
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  KTextFormFieldConst(
                    hint: 'Mobile No',
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  KTextFormFieldConst(
                    hint: 'Address',
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  KTextFormFieldConst(
                    hint: 'Password',
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  KTextFormFieldConst(
                    hint: 'Confirm Password',
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        child: Text('Sign Up'),
                        onPressed: (() {
                          Navigator.of(context).pushNamed('LoginScreen');
                        })),
                  ),
                  Spacer(
                    flex: 2,
                  ),
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
                            'Login',
                            style: TextStyle(
                                color: AppColor.Kmaincolor,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
