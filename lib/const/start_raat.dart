import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';

class StartRaat extends StatefulWidget {
  @override
  State<StartRaat> createState() => _StartRaatState();
}

class _StartRaatState extends State<StartRaat> {
  var _myColorOne = Colors.grey;

  var _myColorTwo = Colors.grey;

  var _myColorThree = Colors.grey;

  var _myColorFour = Colors.grey;

  var _myColorFive = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Row(
        children: [
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {
                setState(() {
                  _myColorOne = Colors.orange;
                  _myColorTwo = Colors.grey;
                  _myColorThree = Colors.grey;
                  _myColorFour = Colors.grey;
                  _myColorFive = Colors.grey;
                });
              },
              icon: Icon(Icons.star),
              color: _myColorOne,
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {
                setState(() {
                  _myColorOne = Colors.orange;
                  _myColorTwo = Colors.orange;
                  _myColorThree = Colors.grey;
                  _myColorFour = Colors.grey;
                  _myColorFive = Colors.grey;
                });
              },
              icon: Icon(Icons.star),
              color: _myColorTwo,
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {
                setState(() {
                  _myColorOne = Colors.orange;
                  _myColorTwo = Colors.orange;
                  _myColorThree = Colors.orange;
                  _myColorFour = Colors.grey;
                  _myColorFive = Colors.grey;
                });
              },
              icon: Icon(Icons.star),
              color: _myColorThree,
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {
                setState(() {
                  _myColorOne = Colors.orange;
                  _myColorTwo = Colors.orange;
                  _myColorThree = Colors.orange;
                  _myColorFour = Colors.orange;
                  _myColorFive = Colors.grey;
                });
              },
              icon: Icon(Icons.star),
              color: _myColorFour,
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {
                setState(() {
                  _myColorOne = Colors.orange;
                  _myColorTwo = Colors.orange;
                  _myColorThree = Colors.orange;
                  _myColorFour = Colors.orange;
                  _myColorFive = Colors.orange;
                });
              },
              icon: Icon(Icons.star),
              color: _myColorFive,
            ),
          ),
        ],
      )),
    );
  }
}
