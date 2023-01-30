import 'package:flutter/material.dart';

class OfficeView extends StatefulWidget {
  OfficeView({Key? key}) : super(key: key);

  @override
  State<OfficeView> createState() => _OfficeViewState();
}

class _OfficeViewState extends State<OfficeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(children: []),
      ),
    );
  }
}
