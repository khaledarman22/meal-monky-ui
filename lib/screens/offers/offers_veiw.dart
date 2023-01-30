import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';
import 'package:mealmonky/data/fooddata.dart';
import 'package:mealmonky/data/fooddata2.dart';

class OffersView extends StatefulWidget {
  const OffersView({Key? key, required this.va}) : super(key: key);
  final food va;
  @override
  State<OffersView> createState() => _OffersViewState();
}

class _OffersViewState extends State<OffersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${widget.va.title}',
                      style: const TextStyle(
                          color: AppColor.Kmaincolor, fontSize: 40),
                    ),
                    const Icon(Icons.shopping_cart_sharp)
                  ],
                ),
              ),
              const Text('Find discounts, Offers special meals and more!'),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width * .5,
                height: 50,
                child: ElevatedButton(
                    onPressed: (() {}), child: const Text('Check Offers')),
              ),
              SizedBox(
                width: double.infinity,
                height: 270 * 3,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: Food1.length,
                  itemBuilder: (BuildContext context, int index) {
                    var us = Food1[index];

                    return Column(
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
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Image.asset(
                                'assets/images/virtual/star_filled.png'),
                            const Text('4.9'),
                            const Text('(124 ratings) Cafe'),
                            const Padding(
                              padding: EdgeInsets.only(
                                  bottom: 15, left: 10, right: 10),
                              child: Text(
                                '.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColor.Kmaincolor, fontSize: 30),
                              ),
                            ),
                            const Text('Westem Food')
                          ],
                        )
                      ],
                    );
                  },
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
