import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';
import 'package:mealmonky/const/consttextformfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 60, right: 60),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Spacer(
              flex: 4,
            ),
            Text(
              'Reset Password',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
            ),
            Spacer(
              flex: 1,
            ),
            Text(
                'Please enter your email to receive a link to  create a new password via email',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: AppColor.KtherdColor)),
            Spacer(
              flex: 2,
            ),
            KTextFormFieldConst(hint: ' Email'),
            Spacer(
              flex: 1,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  child: Text('Send'),
                  onPressed: (() {
                    Navigator.of(context).pushNamed('checkmobilescreen');
                  })),
            ),
            Spacer(
              flex: 11,
            ),
          ]),
        ),
      ),
    );
  }
}
