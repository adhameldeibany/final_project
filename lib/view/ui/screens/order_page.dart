import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffefe),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/p12.png',
            width: double.infinity,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Success',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Your booking was successful, our service is on its way to your home',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50,),
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: Colors.grey,
                    offset: Offset(0, 6),
                  )
                ]
            ),
            width: 300,
            height: 48,
            child: MaterialButton(
              onPressed: () {},
              child: Text('Go to Order',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              color: Colors.blue,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.0) ,
              ),
              minWidth: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}