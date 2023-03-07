import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Payment",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          ),
          leading: InkWell(
              child: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Address Detail",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.grey),
                    SizedBox(width: 10),
                    Text("2464 Royal ln , new york")
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Text("+62 812-689-711")
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Order Detail",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/photo(1).jpeg'),
                    radius: 28,
                  ),
                  title: Text(
                    "Maryam ahmed samiir ",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  subtitle: Text("Home and room cleaning",
                      style: TextStyle(fontSize: 14)),
                  trailing: Text(
                    "\$ 20,00",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("Home size "),
                    SizedBox(width: 275),
                    Text(
                      "100",
                      style: TextStyle(color: Colors.grey),textAlign: TextAlign.end,
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text("Date "),
                    SizedBox(width: 210),
                    Text(
                      "Augest,4 wednesday",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text("Time "),
                    SizedBox(width: 278),
                    Text(
                      "10:00 pm",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "Voucher",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xffc4c4c4),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        InkWell(
                          child: Text(
                            "NEWUSER",
                            style: TextStyle(color: Color(0xFF33A1FD)),
                          ),
                          onTap: () {},
                        ),
                        SizedBox(width: 220),
                        InkWell(
                          child: Text("Applied"),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Payment method",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ListTile(
                  leading: CircleAvatar(
                      child: Icon(
                    Icons.wallet,
                    color: Color(0xFF33A1FD),
                  )),
                  title: Text(
                    "My Wallet",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  subtitle: Text("\$400,00"),
                  trailing: InkWell(
                    child: Text("Change"),
                    onTap: () {},
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Order summary",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("Order Amount "),
                    SizedBox(width: 240),
                    Text(
                      "20,00",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("Tax  "),
                    SizedBox(width: 300),
                    Text(
                      "52,00",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("Voucher  "),
                    SizedBox(width: 270),
                    Text(
                      "52,00",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(height: 15),

                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$20,00",
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

    );
  }
}
