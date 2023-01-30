import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';

class KTextFormFieldConst extends StatelessWidget {
  KTextFormFieldConst({Key? key, this.hint}) : super(key: key);
  var hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextFormField(
          decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[300],
        hintStyle: TextStyle(),
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.transparent, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 0.0,
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.transparent, width: 1.5),
        ),
      )),
    );
  }
}
