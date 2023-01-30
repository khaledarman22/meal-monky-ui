import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mealmonky/const/colors.dart';
import 'package:mealmonky/const/consttextformfield.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class checkmobilescreen extends StatelessWidget {
  const checkmobilescreen({Key? key}) : super(key: key);

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
              'We have sent an OTP toyour Mobile',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
            Spacer(
              flex: 1,
            ),
            Text(
                'Please check your mobile number 071*****12 continue to reset your password',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: AppColor.KtherdColor)),
            Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OTP(),
                OTP(),
                OTP(),
                OTP(),
              ],
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont\'t Receive?',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: AppColor.KtherdColor)),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'IntroScreen');
                    },
                    child: Text(
                      'Click Here',
                      style: TextStyle(
                          color: AppColor.Kmaincolor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    )),
              ],
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

class OTP extends StatelessWidget {
  const OTP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58,
      height: 58,
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[300],
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent)),
            hintText: '*',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent))),
        onChanged: ((value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.length == 0) {
            FocusScope.of(context).previousFocus();
          }
        }),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline6,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
