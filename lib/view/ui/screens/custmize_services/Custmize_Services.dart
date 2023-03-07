import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:date_time_picker/date_time_picker.dart';

class CustmizeServices extends StatefulWidget {
  const CustmizeServices({Key? key}) : super(key: key);

  @override
  State<CustmizeServices> createState() => _CustmizeServicesState();
}

class _CustmizeServicesState extends State<CustmizeServices> {
  RangeValues values = RangeValues(0, 1);
  double currentValue = 0;
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      body: SlidingUpPanel(
        backdropEnabled: true,
        color: Colors.transparent,
        panel: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(24), topLeft: Radius.circular(24)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 25),
                NavigationIndicator(
                  animation: kAlwaysCompleteAnimation,
                  height: 10,
                  color: Colors.grey,
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 8),
                    Text(
                      "Home size",
                      textAlign: TextAlign.left,
                      style: (TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Slider(
                  value: currentValue,
                  onChanged: (value) {
                    setState(() {
                      currentValue = value;
                    });
                  },
                  label: currentValue.toString(),
                  min: 0,
                  max: 300,
                  divisions: 10,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 9),
                    Text(
                      'Time',
                      textAlign: TextAlign.left,
                      style: (TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomRadioButton(
                          spacing: 2,
                          enableShape: true,
                          elevation: 0,
                          buttonLables: [
                            '6 AM',
                            '7 AM',
                            '8 AM',
                            '9 AM',
                            '10 AM',
                            '11 AM',
                            '12 PM',
                            '1 PM',
                            '2 PM'
                          ],
                          buttonValues: [
                            "1 ",
                            "2 ",
                            "3",
                            "4",
                            "5",
                            "6",
                            "7",
                            "80",
                            "9"
                          ],
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
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: DateTimePicker(
                    initialValue: '',
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    dateLabelText: 'Date',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                    onChanged: (val) => print(val),
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => print(val),
                  ),
                ),
                SizedBox(height: 80),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${currentValue * 1.5}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xFF33A1FD)),
                        )
                      ],
                    ),
                    SizedBox(width: 200),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Book now",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Image.asset('assets/photo(1).jpeg'),
      ),
    );
  }
}
