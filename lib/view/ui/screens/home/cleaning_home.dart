import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../choosePartner/choose_Partner.dart';
import '../custmize_services/Custmize_Services.dart';

class CleaningHome extends StatefulWidget {
  const CleaningHome({Key? key}) : super(key: key);

  @override
  State<CleaningHome> createState() => _CleaningHomeState();
}

class _CleaningHomeState extends State<CleaningHome> {
  bool x = false;
  bool y = false;
  bool z = false;
  bool a = false;
  bool b = false;
  bool photo1 = false;
  bool photo2 = false;
  bool photo3 = false;
  bool photo4 = false;
  bool photo5 = false;
  bool photo6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white30,
          elevation: 0,
          leading: IconButton(
              onPressed:() {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            'cleaning home',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.lightBlue,
                        )),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (x == false) {
                            x = true;
                            y = false;
                            z = false;
                          } else if (x == true) {
                            x = false;
                          }
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: x ? Colors.lightBlue : Colors.white,
                            border: Border.all(color: Colors.lightBlue)),
                        child: Center(
                            child: Text(
                              'Featured Services',
                              style: TextStyle(
                                  color: x ? Colors.white : Colors.lightBlue,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {

                        setState(() {
                          if (y == false) {
                            y = true;
                            x = false;
                            z = false;
                          } else if (y == true) {
                            y = false;
                          }
                        });
                      },
                      child: Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: y ? Colors.lightBlue : Colors.white,
                            border: Border.all(color: Colors.lightBlue)),
                        child: Center(
                            child: Text(
                              'Most recent services',
                              style: TextStyle(
                                  color: y ? Colors.white : Colors.lightBlue,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (z == false) {
                            z = true;
                            x = false;
                            y = false;
                          } else if (z == true) {
                            z = false;
                          }
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: z ? Colors.lightBlue : Colors.white,
                            border: Border.all(color: Colors.lightBlue)),
                        child: Center(
                            child: Text(
                              'Related',
                              style: TextStyle(
                                  color: z ? Colors.white : Colors.lightBlue,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ]),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 240,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Card(
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.circular(80),
                                // ),
                                elevation: 5,
                                child: InkWell(
                                  onTap: (){
                                    showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                                      ),
                                      context: context ,
                                      builder : (context) => Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 5),
                                            NavigationIndicator(
                                              animation: kAlwaysCompleteAnimation,
                                              height: 10,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(height: 8),
                                            Row(
                                              children: [
                                                Text(
                                                  "Filter",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 270),
                                                InkWell(
                                                  child: Text(
                                                    "Reset",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                        color: Color(0xFF33A1FD)),
                                                  ),
                                                  onTap: () {
                                                  },
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 30),
                                            Row(
                                              children: [
                                                Text(
                                                  "Sort by",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 270),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                CustomRadioButton(
                                                    spacing: 1,
                                                    enableShape: true,
                                                    elevation: 0,
                                                    buttonLables: ['Reviews', 'Hieghst', 'Lowest'],
                                                    buttonValues: ["1 ", "2 ", "3"],
                                                    radioButtonValue: (value) {},
                                                    buttonTextStyle: ButtonTextStyle(
                                                        selectedColor: Colors.white70,
                                                        unSelectedColor: Color(0xFF33A1FD)),
                                                    unSelectedColor: Colors.white24,
                                                    selectedColor: Color(0xFF33A1FD))
                                              ],
                                            ),
                                            SizedBox(height: 6),
                                            Row(
                                              children: [
                                                CustomRadioButton(
                                                    spacing: 1,
                                                    enableShape: true,
                                                    elevation: 0,
                                                    buttonLables: ['Lateset', 'Related'],
                                                    buttonValues: ["1 ", "2 "],
                                                    radioButtonValue: (value) {
                                                      print(value);
                                                    },
                                                    buttonTextStyle: ButtonTextStyle(
                                                        selectedColor: Colors.white70,
                                                        unSelectedColor: Color(0xFF33A1FD)),
                                                    unSelectedColor: Colors.white24,
                                                    selectedColor: Color(0xFF33A1FD))
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Row(
                                              children: [
                                                Text(
                                                  "Price Range",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 10),
                                                Text("(50m)"),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                SizedBox(width: 25),
                                                Container(
                                                  width: 120,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(10.0),
                                                        ),
                                                        alignLabelWithHint: true),
                                                    keyboardType: TextInputType.number,
                                                  ),
                                                ),
                                                SizedBox(width: 25),
                                                Text("To"),
                                                SizedBox(width: 25),
                                                Container(
                                                  width: 120,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10.0))),
                                                    keyboardType: TextInputType.number,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Text(
                                              "Payment method",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(height: 20),
                                            InkWell(
                                              onTap: () { Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => CustmizeServices()));},
                                              child: Container(
                                                height: 55,
                                                decoration: BoxDecoration(
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      color: Color(0xff31393c),
                                                      blurRadius: 3,
                                                      offset: Offset(3, 3),
                                                    )
                                                  ],
                                                  color: Color(0xFF33A1FD),
                                                  borderRadius: BorderRadius.circular(15.0),
                                                ),
                                                padding: const EdgeInsets.all(18),
                                                child: Center(
                                                    child: Text(
                                                      "Apply filter",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold),
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),


                                    );
                                  },
                                  child: ClipRRect(
                                    //   borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'assets/cln.png',
                                        height: 180,
                                        width: 180,
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (photo1 == false) {
                                        photo1 = true;
                                      } else if (photo1 == true) {
                                        photo1 = false;
                                      }
                                    });
                                  },
                                  icon: photo1
                                      ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                      : Icon(Icons.favorite_border))
                            ],
                          ),
                          Text(
                            'Leslie Alexander',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Home Cleaning'),
                          Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 0,
                                minRating: 0,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('(6k)')
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 240,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Card(
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.circular(80),
                                // ),
                                elevation: 5,
                                child: InkWell(
                                  onTap: (){
                                    showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                                      ),
                                      context: context ,
                                      builder : (context) => Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 5),
                                            NavigationIndicator(
                                              animation: kAlwaysCompleteAnimation,
                                              height: 10,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(height: 8),
                                            Row(
                                              children: [
                                                Text(
                                                  "Filter",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 270),
                                                InkWell(
                                                  child: Text(
                                                    "Reset",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                        color: Color(0xFF33A1FD)),
                                                  ),
                                                  onTap: () {
                                                  },
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 30),
                                            Row(
                                              children: [
                                                Text(
                                                  "Sort by",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 270),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                CustomRadioButton(
                                                    spacing: 1,
                                                    enableShape: true,
                                                    elevation: 0,
                                                    buttonLables: ['Reviews', 'Hieghst', 'Lowest'],
                                                    buttonValues: ["1 ", "2 ", "3"],
                                                    radioButtonValue: (value) {},
                                                    buttonTextStyle: ButtonTextStyle(
                                                        selectedColor: Colors.white70,
                                                        unSelectedColor: Color(0xFF33A1FD)),
                                                    unSelectedColor: Colors.white24,
                                                    selectedColor: Color(0xFF33A1FD))
                                              ],
                                            ),
                                            SizedBox(height: 6),
                                            Row(
                                              children: [
                                                CustomRadioButton(
                                                    spacing: 1,
                                                    enableShape: true,
                                                    elevation: 0,
                                                    buttonLables: ['Lateset', 'Related'],
                                                    buttonValues: ["1 ", "2 "],
                                                    radioButtonValue: (value) {
                                                      print(value);
                                                    },
                                                    buttonTextStyle: ButtonTextStyle(
                                                        selectedColor: Colors.white70,
                                                        unSelectedColor: Color(0xFF33A1FD)),
                                                    unSelectedColor: Colors.white24,
                                                    selectedColor: Color(0xFF33A1FD))
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Row(
                                              children: [
                                                Text(
                                                  "Price Range",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 10),
                                                Text("(50m)"),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                SizedBox(width: 25),
                                                Container(
                                                  width: 120,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(10.0),
                                                        ),
                                                        alignLabelWithHint: true),
                                                    keyboardType: TextInputType.number,
                                                  ),
                                                ),
                                                SizedBox(width: 25),
                                                Text("To"),
                                                SizedBox(width: 25),
                                                Container(
                                                  width: 120,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10.0))),
                                                    keyboardType: TextInputType.number,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Text(
                                              "Payment method",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(height: 20),
                                            InkWell(
                                              onTap: () { Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => CustmizeServices()));},
                                              child: Container(
                                                height: 55,
                                                decoration: BoxDecoration(
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      color: Color(0xff31393c),
                                                      blurRadius: 3,
                                                      offset: Offset(3, 3),
                                                    )
                                                  ],
                                                  color: Color(0xFF33A1FD),
                                                  borderRadius: BorderRadius.circular(15.0),
                                                ),
                                                padding: const EdgeInsets.all(18),
                                                child: Center(
                                                    child: Text(
                                                      "Apply filter",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold),
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),


                                    );
                                  },
                                  child: ClipRRect(
                                    //   borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'assets/pngwing.com.png',
                                        height: 180,
                                        width: 180,
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (photo2 == false) {
                                        photo2 = true;
                                      } else if (photo2 == true) {
                                        photo2 = false;
                                      }
                                    });
                                  },
                                  icon: photo2
                                      ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                      : Icon(Icons.favorite_border))
                            ],
                          ),
                          Text(
                            'Ronald Richards',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Cleaning Home'),
                          Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 0,
                                minRating: 0,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('(4k)')
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 240,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Card(
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.circular(80),
                                // ),
                                elevation: 5,
                                child: InkWell(
                                  onTap: (){
                                    showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                                      ),
                                      context: context ,
                                      builder : (context) => Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 5),
                                            NavigationIndicator(
                                              animation: kAlwaysCompleteAnimation,
                                              height: 10,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(height: 8),
                                            Row(
                                              children: [
                                                Text(
                                                  "Filter",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 270),
                                                InkWell(
                                                  child: Text(
                                                    "Reset",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                        color: Color(0xFF33A1FD)),
                                                  ),
                                                  onTap: () {
                                                  },
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 30),
                                            Row(
                                              children: [
                                                Text(
                                                  "Sort by",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 270),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                CustomRadioButton(
                                                    spacing: 1,
                                                    enableShape: true,
                                                    elevation: 0,
                                                    buttonLables: ['Reviews', 'Hieghst', 'Lowest'],
                                                    buttonValues: ["1 ", "2 ", "3"],
                                                    radioButtonValue: (value) {},
                                                    buttonTextStyle: ButtonTextStyle(
                                                        selectedColor: Colors.white70,
                                                        unSelectedColor: Color(0xFF33A1FD)),
                                                    unSelectedColor: Colors.white24,
                                                    selectedColor: Color(0xFF33A1FD))
                                              ],
                                            ),
                                            SizedBox(height: 6),
                                            Row(
                                              children: [
                                                CustomRadioButton(
                                                    spacing: 1,
                                                    enableShape: true,
                                                    elevation: 0,
                                                    buttonLables: ['Lateset', 'Related'],
                                                    buttonValues: ["1 ", "2 "],
                                                    radioButtonValue: (value) {
                                                      print(value);
                                                    },
                                                    buttonTextStyle: ButtonTextStyle(
                                                        selectedColor: Colors.white70,
                                                        unSelectedColor: Color(0xFF33A1FD)),
                                                    unSelectedColor: Colors.white24,
                                                    selectedColor: Color(0xFF33A1FD))
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Row(
                                              children: [
                                                Text(
                                                  "Price Range",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 10),
                                                Text("(50m)"),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                SizedBox(width: 25),
                                                Container(
                                                  width: 120,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(10.0),
                                                        ),
                                                        alignLabelWithHint: true),
                                                    keyboardType: TextInputType.number,
                                                  ),
                                                ),
                                                SizedBox(width: 25),
                                                Text("To"),
                                                SizedBox(width: 25),
                                                Container(
                                                  width: 120,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10.0))),
                                                    keyboardType: TextInputType.number,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Text(
                                              "Payment method",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(height: 20),
                                            InkWell(
                                              onTap: () { Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => CustmizeServices()));},
                                              child: Container(
                                                height: 55,
                                                decoration: BoxDecoration(
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      color: Color(0xff31393c),
                                                      blurRadius: 3,
                                                      offset: Offset(3, 3),
                                                    )
                                                  ],
                                                  color: Color(0xFF33A1FD),
                                                  borderRadius: BorderRadius.circular(15.0),
                                                ),
                                                padding: const EdgeInsets.all(18),
                                                child: Center(
                                                    child: Text(
                                                      "Apply filter",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold),
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),


                                    );
                                  },
                                  child: ClipRRect(
                                    //   borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'assets/PngItem_562060.png',
                                        height: 180,
                                        width: 180,
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (photo3 == false) {
                                        photo3 = true;
                                      } else if (photo3 == true) {
                                        photo3 = false;
                                      }
                                    });
                                  },
                                  icon: photo3
                                      ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                      : Icon(Icons.favorite_border))
                            ],
                          ),
                          Text(
                            'Kathryn Murphy',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Home and Room Cleaning'),
                          Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 0,
                                minRating: 0,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('(5k)')
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 240,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Card(
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.circular(80),
                                // ),
                                elevation: 5,
                                child: InkWell(
                                  onTap: (){
                                    showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                                      ),
                                      context: context ,
                                      builder : (context) => Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 5),
                                            NavigationIndicator(
                                              animation: kAlwaysCompleteAnimation,
                                              height: 10,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(height: 8),
                                            Row(
                                              children: [
                                                Text(
                                                  "Filter",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 270),
                                                InkWell(
                                                  child: Text(
                                                    "Reset",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                        color: Color(0xFF33A1FD)),
                                                  ),
                                                  onTap: () {
                                                  },
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 30),
                                            Row(
                                              children: [
                                                Text(
                                                  "Sort by",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 270),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                CustomRadioButton(
                                                    spacing: 1,
                                                    enableShape: true,
                                                    elevation: 0,
                                                    buttonLables: ['Reviews', 'Hieghst', 'Lowest'],
                                                    buttonValues: ["1 ", "2 ", "3"],
                                                    radioButtonValue: (value) {},
                                                    buttonTextStyle: ButtonTextStyle(
                                                        selectedColor: Colors.white70,
                                                        unSelectedColor: Color(0xFF33A1FD)),
                                                    unSelectedColor: Colors.white24,
                                                    selectedColor: Color(0xFF33A1FD))
                                              ],
                                            ),
                                            SizedBox(height: 6),
                                            Row(
                                              children: [
                                                CustomRadioButton(
                                                    spacing: 1,
                                                    enableShape: true,
                                                    elevation: 0,
                                                    buttonLables: ['Lateset', 'Related'],
                                                    buttonValues: ["1 ", "2 "],
                                                    radioButtonValue: (value) {
                                                      print(value);
                                                    },
                                                    buttonTextStyle: ButtonTextStyle(
                                                        selectedColor: Colors.white70,
                                                        unSelectedColor: Color(0xFF33A1FD)),
                                                    unSelectedColor: Colors.white24,
                                                    selectedColor: Color(0xFF33A1FD))
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Row(
                                              children: [
                                                Text(
                                                  "Price Range",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 10),
                                                Text("(50m)"),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                SizedBox(width: 25),
                                                Container(
                                                  width: 120,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(10.0),
                                                        ),
                                                        alignLabelWithHint: true),
                                                    keyboardType: TextInputType.number,
                                                  ),
                                                ),
                                                SizedBox(width: 25),
                                                Text("To"),
                                                SizedBox(width: 25),
                                                Container(
                                                  width: 120,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10.0))),
                                                    keyboardType: TextInputType.number,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Text(
                                              "Payment method",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(height: 20),
                                            InkWell(
                                              onTap: () { Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => CustmizeServices()));},
                                              child: Container(
                                                height: 55,
                                                decoration: BoxDecoration(
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      color: Color(0xff31393c),
                                                      blurRadius: 3,
                                                      offset: Offset(3, 3),
                                                    )
                                                  ],
                                                  color: Color(0xFF33A1FD),
                                                  borderRadius: BorderRadius.circular(15.0),
                                                ),
                                                padding: const EdgeInsets.all(18),
                                                child: Center(
                                                    child: Text(
                                                      "Apply filter",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold),
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),


                                    );
                                  },
                                  child: ClipRRect(
                                    //   borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'assets/pngegg.png',
                                        height: 180,
                                        width: 180,
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (photo4 == false) {
                                        photo4 = true;
                                      } else if (photo4 == true) {
                                        photo4 = false;
                                      }
                                    });
                                  },
                                  icon: photo4
                                      ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                      : Icon(Icons.favorite_border))
                            ],
                          ),
                          Text(
                            'Jerome bell',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Home Cleaning'),
                          Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 0,
                                minRating: 0,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('(6k)')
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 240,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Card(
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.circular(80),
                                // ),
                                elevation: 5,
                                child: InkWell(onTap: (){
                                  showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                                    ),
                                    context: context ,
                                    builder : (context) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 5),
                                          NavigationIndicator(
                                            animation: kAlwaysCompleteAnimation,
                                            height: 10,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(height: 8),
                                          Row(
                                            children: [
                                              Text(
                                                "Filter",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(width: 270),
                                              InkWell(
                                                child: Text(
                                                  "Reset",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xFF33A1FD)),
                                                ),
                                                onTap: () {
                                                },
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 30),
                                          Row(
                                            children: [
                                              Text(
                                                "Sort by",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(width: 270),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              CustomRadioButton(
                                                  spacing: 1,
                                                  enableShape: true,
                                                  elevation: 0,
                                                  buttonLables: ['Reviews', 'Hieghst', 'Lowest'],
                                                  buttonValues: ["1 ", "2 ", "3"],
                                                  radioButtonValue: (value) {},
                                                  buttonTextStyle: ButtonTextStyle(
                                                      selectedColor: Colors.white70,
                                                      unSelectedColor: Color(0xFF33A1FD)),
                                                  unSelectedColor: Colors.white24,
                                                  selectedColor: Color(0xFF33A1FD))
                                            ],
                                          ),
                                          SizedBox(height: 6),
                                          Row(
                                            children: [
                                              CustomRadioButton(
                                                  spacing: 1,
                                                  enableShape: true,
                                                  elevation: 0,
                                                  buttonLables: ['Lateset', 'Related'],
                                                  buttonValues: ["1 ", "2 "],
                                                  radioButtonValue: (value) {
                                                    print(value);
                                                  },
                                                  buttonTextStyle: ButtonTextStyle(
                                                      selectedColor: Colors.white70,
                                                      unSelectedColor: Color(0xFF33A1FD)),
                                                  unSelectedColor: Colors.white24,
                                                  selectedColor: Color(0xFF33A1FD))
                                            ],
                                          ),
                                          SizedBox(height: 15),
                                          Row(
                                            children: [
                                              Text(
                                                "Price Range",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(width: 10),
                                              Text("(50m)"),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              SizedBox(width: 25),
                                              Container(
                                                width: 120,
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      border: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(10.0),
                                                      ),
                                                      alignLabelWithHint: true),
                                                  keyboardType: TextInputType.number,
                                                ),
                                              ),
                                              SizedBox(width: 25),
                                              Text("To"),
                                              SizedBox(width: 25),
                                              Container(
                                                width: 120,
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(10.0))),
                                                  keyboardType: TextInputType.number,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            "Payment method",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          SizedBox(height: 20),
                                          InkWell(
                                            onTap: () { Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => CustmizeServices()));},
                                            child: Container(
                                              height: 55,
                                              decoration: BoxDecoration(
                                                boxShadow: const [
                                                  BoxShadow(
                                                    color: Color(0xff31393c),
                                                    blurRadius: 3,
                                                    offset: Offset(3, 3),
                                                  )
                                                ],
                                                color: Color(0xFF33A1FD),
                                                borderRadius: BorderRadius.circular(15.0),
                                              ),
                                              padding: const EdgeInsets.all(18),
                                              child: Center(
                                                  child: Text(
                                                    "Apply filter",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),


                                  );
                                },
                                  child: ClipRRect(
                                    //   borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'assets/pn.png',
                                        height: 180,
                                        width: 180,
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (photo5 == false) {
                                        photo5 = true;
                                      } else if (photo5 == true) {
                                        photo5 = false;
                                      }
                                    });
                                  },
                                  icon: photo5
                                      ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                      : Icon(Icons.favorite_border))
                            ],
                          ),
                          Text(
                            'Annette Black',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Personal Home Cleaning'),
                          Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 0,
                                minRating: 0,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('(6k)')
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 240,
                      width: 180,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Card(
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.circular(80),
                                // ),
                                elevation: 5,
                                child: InkWell(
                                  onTap: (){
                                    showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                                      ),
                                      context: context ,
                                      builder : (context) => Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 5),
                                            NavigationIndicator(
                                              animation: kAlwaysCompleteAnimation,
                                              height: 10,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(height: 8),
                                            Row(
                                              children: [
                                                Text(
                                                  "Filter",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 270),
                                                InkWell(
                                                  child: Text(
                                                    "Reset",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                        color: Color(0xFF33A1FD)),
                                                  ),
                                                  onTap: () {
                                                  },
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 30),
                                            Row(
                                              children: [
                                                Text(
                                                  "Sort by",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 270),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                CustomRadioButton(
                                                    spacing: 1,
                                                    enableShape: true,
                                                    elevation: 0,
                                                    buttonLables: ['Reviews', 'Hieghst', 'Lowest'],
                                                    buttonValues: ["1 ", "2 ", "3"],
                                                    radioButtonValue: (value) {},
                                                    buttonTextStyle: ButtonTextStyle(
                                                        selectedColor: Colors.white70,
                                                        unSelectedColor: Color(0xFF33A1FD)),
                                                    unSelectedColor: Colors.white24,
                                                    selectedColor: Color(0xFF33A1FD))
                                              ],
                                            ),
                                            SizedBox(height: 6),
                                            Row(
                                              children: [
                                                CustomRadioButton(
                                                    spacing: 1,
                                                    enableShape: true,
                                                    elevation: 0,
                                                    buttonLables: ['Lateset', 'Related'],
                                                    buttonValues: ["1 ", "2 "],
                                                    radioButtonValue: (value) {
                                                      print(value);
                                                    },
                                                    buttonTextStyle: ButtonTextStyle(
                                                        selectedColor: Colors.white70,
                                                        unSelectedColor: Color(0xFF33A1FD)),
                                                    unSelectedColor: Colors.white24,
                                                    selectedColor: Color(0xFF33A1FD))
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Row(
                                              children: [
                                                Text(
                                                  "Price Range",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(width: 10),
                                                Text("(50m)"),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                SizedBox(width: 25),
                                                Container(
                                                  width: 120,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(10.0),
                                                        ),
                                                        alignLabelWithHint: true),
                                                    keyboardType: TextInputType.number,
                                                  ),
                                                ),
                                                SizedBox(width: 25),
                                                Text("To"),
                                                SizedBox(width: 25),
                                                Container(
                                                  width: 120,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(10.0))),
                                                    keyboardType: TextInputType.number,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 15),
                                            Text(
                                              "Payment method",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(height: 20),
                                            InkWell(
                                              onTap: () {},
                                              child: InkWell(
                                                onTap: (){
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) => CustmizeServices()));
                                                },
                                                child: Container(
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color(0xff31393c),
                                                        blurRadius: 3,
                                                        offset: Offset(3, 3),
                                                      )
                                                    ],
                                                    color: Color(0xFF33A1FD),
                                                    borderRadius: BorderRadius.circular(15.0),
                                                  ),
                                                  padding: const EdgeInsets.all(18),
                                                  child: Center(
                                                      child: Text(
                                                        "Apply filter",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold),
                                                      )),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),


                                    );
                                  },
                                  child: ClipRRect(
                                    //   borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'assets/pngg.png',
                                        height: 180,
                                        width: 180,
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (photo6 == false) {
                                        photo6 = true;
                                      } else if (photo6 == true) {
                                        photo6 = false;
                                      }
                                    });
                                  },
                                  icon: photo6
                                      ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                      : Icon(Icons.favorite_border))
                            ],
                          ),
                          Text(
                            'Eleanor Pena',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Home Cleaning'),
                          Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 0,
                                minRating: 0,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('(6k)')
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            ),
        );
    }
}
