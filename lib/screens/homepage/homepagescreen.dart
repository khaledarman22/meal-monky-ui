// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';
import 'package:mealmonky/const/textform.dart';
import 'package:mealmonky/data/fooddata.dart';
import 'package:mealmonky/data/fooddata2.dart';
import 'package:mealmonky/data/mostfooddate.dart';
import 'package:mealmonky/screens/offers/offers_veiw.dart';
import 'package:mealmonky/screens/order/order_view.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  String dropdownvalue = 'Current Location';
  var items = [
    'Current Location',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Good morning Akila!',
                    style: TextStyle(fontSize: 25),
                  ),
                  Icon(Icons.shopping_cart_sharp)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Delivering to'),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          icon: Image.asset(
                              'assets/images/virtual/dropdown_filled.png'),
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          isDense: true,
                          iconSize: 40,
                          isExpanded: true,
                          value: dropdownvalue,
                          items: items.map((String items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              value = dropdownvalue;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: textFormMain(
                          hint: 'Search food',
                          circle: 30.0,
                          icon: Image.asset(
                              'assets/images/virtual/search_filled.png')),
                    ),
                    SizedBox(
                      height: 170,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Food.length,
                          itemBuilder: (BuildContext, index) {
                            food us = Food[index];
                            return InkWell(
                              onTap: (() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => OffersView(
                                          va: us,
                                        )));
                              }),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('${us.Image}'),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    margin: EdgeInsets.all(20),
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text(
                                    '${us.title}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 30,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Restaurents',
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 25),
                            ),
                            Text(
                              'View all',
                              style: TextStyle(
                                color: AppColor.Kmaincolor,
                              ),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 270 * 3,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: Food1.length,
                        itemBuilder: (BuildContext context, int index) {
                          var us = Food1[index];

                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => OrderView(va: us),
                              ));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      image: DecorationImage(
                                          image: AssetImage('${us.Image}'),
                                          fit: BoxFit.cover)),
                                  width: double.infinity,
                                  height: 200,
                                ),
                                Text(
                                  '${us.title}',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/virtual/star_filled.png'),
                                    Text('4.9'),
                                    Text('(124 ratings) Cafe'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 15, left: 10, right: 10),
                                      child: Text(
                                        '.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: AppColor.Kmaincolor,
                                            fontSize: 30),
                                      ),
                                    ),
                                    Text('Westem Food')
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                height: 30,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Most Popular',
                        style: TextStyle(color: Colors.grey[700], fontSize: 25),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                          color: AppColor.Kmaincolor,
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Food2.length,
                    itemBuilder: (BuildContext, index) {
                      var us = Food2[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('${us.Image}'),
                                    fit: BoxFit.cover),
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.only(right: 20),
                            width: 300,
                            height: 170,
                          ),
                          Text(
                            '${us.title}',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                  'assets/images/virtual/star_filled.png'),
                              Text('4.9'),
                              Text('(124 ratings) Cafe'),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 15, left: 10, right: 10),
                                child: Text(
                                  '.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: AppColor.Kmaincolor, fontSize: 30),
                                ),
                              ),
                              Text('Westem Food')
                            ],
                          )
                        ],
                      );
                    }),
              ),
              SizedBox(
                width: double.infinity,
                height: 30,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Items',
                        style: TextStyle(color: Colors.grey[700], fontSize: 25),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                          color: AppColor.Kmaincolor,
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 500,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Food1.length,
                  itemBuilder: (BuildContext context, int index) {
                    var us = Food1[index];

                    return SizedBox(
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('${us.Image}'),
                                    fit: BoxFit.cover),
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text(
                                  '${us.title}',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    Text('Cafe'),
                                    Text(
                                      '.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: AppColor.Kmaincolor,
                                          fontSize: 30),
                                    ),
                                    Text('Westem Food'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/virtual/star_filled.png'),
                                    Text('4.9'),
                                    Text('(124 ratings) '),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
