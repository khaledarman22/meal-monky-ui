import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';

class textFormMain extends StatelessWidget {
  textFormMain({
    Key? key,
    this.hint,
    this.icon,
    this.circle,
  }) : super(key: key);
  var hint;
  var icon;
  var width;
  var hight;
  var circle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextFormField(
          decoration: InputDecoration(
        prefixIcon: icon,
        filled: true,
        fillColor: Colors.grey[300],
        hintStyle: TextStyle(),
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(circle),
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(circle),
          borderSide: BorderSide(color: Colors.transparent, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 0.0,
          borderRadius: BorderRadius.circular(circle),
          borderSide: BorderSide(color: Colors.transparent, width: 1.5),
        ),
      )),
    );
  }
}
