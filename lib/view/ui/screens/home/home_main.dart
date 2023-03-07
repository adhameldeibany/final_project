import 'package:final_project/view/ui/screens/chat/chat_screen.dart';
import 'package:final_project/view/ui/screens/payment/Payment.dart';
import 'package:final_project/view/ui/screens/home/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home_screen.dart';
import '../order_page2.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  List pages = [HomeScreen(),ChatScreen(), OrderPage2(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: pages[_selectedIndex],
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: GNav(
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 8,
                  activeColor: Colors.lightBlue,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.grey[100]!,
                  color: Colors.black,
                  tabs: [
                    GButton(
                      iconColor: Colors.lightBlue,
                      textColor: Colors.lightBlue,
                      icon: Icons.home_outlined,
                      text: 'Home',
                    ),
                    GButton(
                      iconColor: Colors.lightBlue,
                      textColor: Colors.lightBlue,
                      icon: Icons.message,
                      text: 'Messages',
                    ),
                    GButton(
                      iconColor: Colors.lightBlue,
                      textColor: Colors.lightBlue,
                      icon: Icons.card_travel_rounded,
                      text: 'Orders',
                    ),
                    GButton(
                      iconColor: Colors.lightBlue,
                      textColor: Colors.lightBlue,
                      icon: Icons.person_outline,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
            ),
        );
    }
}
