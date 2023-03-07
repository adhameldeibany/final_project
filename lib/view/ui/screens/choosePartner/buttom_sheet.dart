// import 'package:flutter/cupertino.dart';
//
// showModalBottomSheet(
// context: context ,
// builder : (context) => Column(
// children: [
// SizedBox(height: 15),
// NavigationIndicator(
// animation: kAlwaysCompleteAnimation,
// height: 10,
// color: Colors.grey,
// ),
// SizedBox(height: 16),
// Row(
// children: [
// Text(
// "Filter",
// style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold,
// color: Colors.black),
// ),
// SizedBox(width: 270),
// InkWell(
// child: Text(
// "Reset",
// style: TextStyle(
// fontSize: 16,
// fontWeight: FontWeight.bold,
// color: Color(0xFF33A1FD)),
// ),
// onTap: () {},
// )
// ],
// ),
// SizedBox(height: 30),
// Row(
// children: [
// Text(
// "Sort by",
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.bold,
// color: Colors.black),
// ),
// SizedBox(width: 270),
// ],
// ),
// SizedBox(height: 18),
// Row(
// children: [
// CustomRadioButton(
// spacing: 1,
// enableShape: true,
// elevation: 0,
// buttonLables: ['Reviews', 'Hieghst', 'Lowest'],
// buttonValues: ["1 ", "2 ", "3"],
// radioButtonValue: (value) {},
// buttonTextStyle: ButtonTextStyle(
// selectedColor: Colors.white70,
// unSelectedColor: Color(0xFF33A1FD)),
// unSelectedColor: Colors.white24,
// selectedColor: Color(0xFF33A1FD))
// ],
// ),
// SizedBox(height: 10),
// Row(
// children: [
// CustomRadioButton(
// spacing: 1,
// enableShape: true,
// elevation: 0,
// buttonLables: ['Lateset', 'Related'],
// buttonValues: ["1 ", "2 "],
// radioButtonValue: (value) {
// print(value);
// },
// buttonTextStyle: ButtonTextStyle(
// selectedColor: Colors.white70,
// unSelectedColor: Color(0xFF33A1FD)),
// unSelectedColor: Colors.white24,
// selectedColor: Color(0xFF33A1FD))
// ],
// ),
// SizedBox(height: 22),
// Row(
// children: [
// Text(
// "Price Range",
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.bold,
// color: Colors.black),
// ),
// SizedBox(width: 10),
// Text("(50m)"),
// ],
// ),
// SizedBox(height: 20),
// Row(
// children: [
// SizedBox(width: 25),
// Container(
// width: 120,
// child: TextFormField(
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(10.0),
// ),
// alignLabelWithHint: true),
// keyboardType: TextInputType.number,
// ),
// ),
// SizedBox(width: 25),
// Text("To"),
// SizedBox(width: 25),
// Container(
// width: 120,
// child: TextFormField(
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(10.0))),
// keyboardType: TextInputType.number,
// ),
// ),
// ],
// ),
// SizedBox(height: 15),
// Text(
// "Payment method",
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.bold,
// color: Colors.black),
// ),
// SizedBox(height: 20),
// InkWell(
// onTap: () {},
// child: Container(
// height: 55,
// decoration: BoxDecoration(
// boxShadow: const [
// BoxShadow(
// color: Color(0xff31393c),
// blurRadius: 3,
// offset: Offset(3, 3),
// )
// ],
// color: Color(0xFF33A1FD),
// borderRadius: BorderRadius.circular(15.0),
// ),
// padding: const EdgeInsets.all(18),
// child: Center(
// child: Text(
// "Apply filter",
// style: TextStyle(
// fontSize: 14,
// color: Colors.white,
// fontWeight: FontWeight.bold),
// )),
// ),
// ),
// ],
// ),
//
//
// );