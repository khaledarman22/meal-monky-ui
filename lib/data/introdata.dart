// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';

class intro {
  final String? Image;
  final String? title;
  final String? doc;

  intro({this.title, this.doc, this.Image});

  startsWith(String query) {}
}

final intro1 = intro(
    Image: 'assets/images/virtual/vector1.png',
    doc:
        'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
    title: 'Find Food You Love');
final intro2 = intro(
    Image: 'assets/images/virtual/vector2.png',
    doc: 'Fast food delivery to your home, office wherever you are',
    title: 'Fast Delivery');
final intro3 = intro(
    Image: 'assets/images/virtual/vector3.png',
    doc: 'Real time tracking of your food on the app once you placed the order',
    title: 'Live Tracking');

final Intro = [intro1, intro2, intro3];
