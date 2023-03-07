import 'package:final_project/view/ui/screens/home/profile/favourite.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../sign_Up/signUp.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  double x = 400.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/pngg.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Eleanor Pena',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text('office worker'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35, left: 80),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit_outlined,
                          size: 20,
                        )),
                  )
                ],
              ),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(
                Icons.phone,
                size: 20,
              ),
              title: Transform.translate(
                offset: Offset(-19, 0),
                child: Text(
                  '+62 8123 - 4567 - 890',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            ListTile(
              dense: true,
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              leading: Icon(
                Icons.email,
                size: 20,
              ),
              title: Transform.translate(
                offset: Offset(-19, 0),
                child: Text(
                  'eleanor@gmail.com',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      '\$$x',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Wallet',
                      style: TextStyle(
                        fontSize: 7,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Text(
                      '17',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Orders',
                      style: TextStyle(
                        fontSize: 7,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Text(
                      '17',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Vouchers',
                      style: TextStyle(
                        fontSize: 7,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 22),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavouriteScreen()));
              },
              leading: Icon(
                Icons.favorite_border,
                color: Colors.blue, size: 20,
              ),
              title:  Transform.translate(
                offset: Offset(-19, 0),
                child: Text(
                  'Your Favourits',style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              onTap: (){},
              leading: Icon(
                Icons.payment,
                color: Colors.blue, size: 20,
              ),
              title:  Transform.translate(
                offset: Offset(-19, 0),
                child: Text(
                  'Payment',style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              onTap: (){},
              leading: Icon(
                Icons.message,
                color: Colors.blue, size: 20,
              ),
              title:  Transform.translate(
                offset: Offset(-19, 0),
                child: Text(
                  'FAQ',style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              onTap: (){},
              leading: Icon(
                Icons.help_outline,
                color: Colors.blue, size: 20,
              ),
              title:  Transform.translate(
                offset: Offset(-19, 0),
                child: Text(
                  'Help',style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              onTap: (){},
              leading: Icon(
                Icons.account_box_outlined,
                color: Colors.blue, size: 20,
              ),
              title:  Transform.translate(
                offset: Offset(-19, 0),
                child: Text(
                  'My Account',style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              onTap: (){},
              leading: Icon(
                Icons.settings,
                color: Colors.blue, size: 20,
              ),
              title:  Transform.translate(
                offset: Offset(-19, 0),
                child: Text(
                  'Settings',style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            SizedBox(height: 15,),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              onTap: (){
                FirebaseAuth.instance.signOut().then((value) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return SignupScreen();
                    }),
                  );
                });

              },
              leading: Icon(
                Icons.logout,
                color: Colors.red, size: 20,
              ),
              title:  Transform.translate(
                offset: Offset(-19, 0),
                child: Text(
                  'Logout',style: TextStyle(fontSize: 12 , color: Colors.red),
                ),
              ),
            ),
          ],
        ));
  }
}