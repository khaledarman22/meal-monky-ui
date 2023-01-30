import 'package:flutter/material.dart';
import 'package:mealmonky/const/colors.dart';
import 'package:mealmonky/const/start_raat.dart';
import 'package:mealmonky/data/fooddata2.dart';
import 'package:mealmonky/screens/car/car_view.dart';

class OrderView extends StatefulWidget {
  OrderView({Key? key, required this.va}) : super(key: key);
  final food1 va;

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  var num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Expanded(
                flex: 1,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .5,
                      top: -20,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("${widget.va.Image}"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.va.title}',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 120,
                              child: StartRaat(),
                            ),
                            Text(
                              'RS.${widget.va.pric}',
                              style: TextStyle(
                                  color: AppColor.Kmaincolor, fontSize: 24),
                            )
                          ],
                        ),
                        Text(
                          '${widget.va.raat}',
                          style: TextStyle(
                              color: AppColor.Kmaincolor, fontSize: 24),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Decoration',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('${widget.va.doc}'),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Number of Portions',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      num = num - 1;
                                      print(num);
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 2),
                                    width: 40,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: AppColor.Kmaincolor,
                                    ),
                                    child: Center(child: Text('-')),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 2),
                                  width: 40,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppColor.Kmaincolor,
                                  ),
                                  child: Center(child: Text('${num}')),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      num = num + 1;
                                      print(num);
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 2),
                                    width: 40,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: AppColor.Kmaincolor,
                                    ),
                                    child: Center(child: Text('+')),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                              child: Text('Add to Car'),
                              onPressed: (() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CarView()));
                              })),
                        ),
                        Spacer()
                      ],
                    ),
                  )),
            )
          ]),
        ),
      ),
    ));
  }
}
