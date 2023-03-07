import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderPage2 extends StatefulWidget {
  OrderPage2({Key? key}) : super(key: key);

  @override
  State<OrderPage2> createState() => OrderPage2State();
}

class OrderPage2State extends State<OrderPage2> {
  @override
  TextEditingController x = TextEditingController();
  bool a = true;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text(
                'Order ',
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black12,
                        ),
                        child: TextFormField(
                          controller: x,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search order',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (a == false) {
                                  a = true;
                                  b = false;
                                  c = false;
                                  d = false;
                                  e = false;
                                } else if (a == true) {
                                  a = false;
                                }
                              });
                              print('a');
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    'All',
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Container(
                                    height: 3,
                                    width: 22,
                                    color: a ? Colors.lightBlue : Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (b == false) {
                                  b = true;
                                  a = false;
                                  c = false;
                                  d = false;
                                  e = false;
                                } else if (a == true) {
                                  a = false;
                                }
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    'Ongoing',
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Container(
                                    height: 3,
                                    width: 60,
                                    color: b ? Colors.lightBlue : Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (c == false) {
                                  a = false;
                                  b = false;
                                  c = true;
                                  d = false;
                                  e = false;
                                } else if (a == true) {
                                  a = false;
                                }
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    'Unpaid',
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Container(
                                    height: 3,
                                    width: 50,
                                    color: c ? Colors.lightBlue : Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (d == false) {
                                  a = false;
                                  b = false;
                                  c = false;
                                  d = true;
                                  e = false;
                                } else if (a == true) {
                                  a = false;
                                }
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    'Completed',
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Container(
                                    height: 3,
                                    width: 75,
                                    color: d ? Colors.lightBlue : Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (e == false) {
                                  a = false;
                                  b = false;
                                  c = false;
                                  d = false;
                                  e = true;
                                } else if (a == true) {
                                  a = false;
                                }
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                    'Unreviewed',
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Container(
                                    height: 3,
                                    width: 80,
                                    color: e ? Colors.lightBlue : Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'assets/household.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('Cleaning'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 130),
                                      child: Text('Ongoing'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.black12,
                                      backgroundImage: AssetImage('assets/pngegg.png'),
                                      maxRadius: 25,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Jerome bell',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Row(
                                          children: [
                                            RatingBar.builder(
                                              itemSize: 12,
                                              initialRating: 0,
                                              minRating: 0,
                                              direction: Axis.horizontal,
                                              itemCount: 5,
                                              itemPadding:
                                              EdgeInsets.symmetric(horizontal: 0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '(6K)',
                                              style: TextStyle(fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Total',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/home-button.png',
                                                height: 20,
                                                width: 20,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '100 m',
                                                style: TextStyle(fontSize: 12),
                                              ),
                                              SizedBox(
                                                width: 12,
                                              ),
                                              Text(
                                                '\$20',
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 18,
                                          )
                                        ],
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 56, bottom: 20),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              height: 40,
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  color: Colors.lightBlue),
                                              child: Center(
                                                child: Text('Completed',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold)),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'assets/washing-machine.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('Laundry'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 130),
                                      child: Text('2 days ago'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.black12,
                                      backgroundImage: AssetImage('assets/cln.png'),
                                      maxRadius: 25,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Leslie Alexander',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Row(
                                          children: [
                                            RatingBar.builder(
                                              itemSize: 12,
                                              initialRating: 0,
                                              minRating: 0,
                                              direction: Axis.horizontal,
                                              itemCount: 5,
                                              itemPadding:
                                              EdgeInsets.symmetric(horizontal: 0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '(6K)',
                                              style: TextStyle(fontSize: 10),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Total',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/washing-machine.png',
                                                height: 20,
                                                width: 20,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                '2 Laundry',
                                                style: TextStyle(fontSize: 12),
                                              ),
                                              SizedBox(
                                                width: 12,
                                              ),
                                              Text(
                                                '\$14',
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 18,
                                          )
                                        ],
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 38, bottom: 20),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              height: 40,
                                              width: 140,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  color: Colors.lightBlue),
                                              child: Center(
                                                child: Text('Review',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold)),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            ),
        );
    }
}
