import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';

class CarView extends StatefulWidget {
  const CarView({Key? key}) : super(key: key);

  @override
  State<CarView> createState() => _CarViewState();
}

class _CarViewState extends State<CarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('My Order'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/real/pizza2.jpg'),
                              fit: BoxFit.cover),
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            'csccc',
                            style: TextStyle(fontSize: 20),
                          ),
                          Row(
                            children: [
                              Text('Cafe'),
                              Text(
                                '.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColor.Kmaincolor, fontSize: 30),
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
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                      'assets/images/virtual/loc.png')),
                              Text('4.9'),
                              Text('(124 ratings) '),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.grey[200],
                width: double.infinity,
                child: Column(children: [
                  Column(
                    children: [
                      NewWidget(
                        color: Colors.grey[200],
                        price: '\$16',
                        titil: 'Beef Burger x1',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      NewWidget(
                        color: Colors.grey[200],
                        price: '\$14',
                        titil: 'Classic Burger x1',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      NewWidget(
                        color: Colors.grey[200],
                        price: '\$17',
                        titil: 'Cheese Chicken Burger x1',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      NewWidget(
                        color: Colors.grey[200],
                        price: '\$15',
                        titil: 'Chicken Legs Basket x1',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      NewWidget(
                        color: Colors.grey[200],
                        price: '\$6',
                        titil: 'French Fries Large x1',
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white,
                    height: 80,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery Instrusctions',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: AppColor.Kmaincolor,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Add Notes',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColor.Kmaincolor),
                                  )),
                            ],
                          )
                        ]),
                  ),
                  Container(
                    width: double.infinity,
                    height: 2,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.grey[200],
                    height: 40,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub Total',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                '\$30',
                                style: TextStyle(
                                    fontSize: 20, color: AppColor.Kmaincolor),
                              ))
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.grey[200],
                    height: 40,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery Cost',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                '\$24',
                                style: TextStyle(
                                    fontSize: 20, color: AppColor.Kmaincolor),
                              ))
                        ]),
                  ),
                  Container(
                    width: double.infinity,
                    height: 2,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white,
                    height: 80,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                '\$70',
                                style: TextStyle(
                                    fontSize: 20, color: AppColor.Kmaincolor),
                              ))
                        ]),
                  ),
                  Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout')))
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  NewWidget({
    Key? key,
    required this.color,
    required this.titil,
    this.price = '20',
  }) : super(key: key);

  final dynamic color;
  final String titil;
  String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.all(10),
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          '${titil}',
          style: TextStyle(fontSize: 20),
        ),
        Text('${price}')
      ]),
    );
  }
}
