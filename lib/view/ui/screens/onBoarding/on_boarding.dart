import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../login/Login.dart';
import '../sign_Up/signUp.dart';

class OnBoarding extends StatelessWidget {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  static const List<String> imageUrl = [
    'assets/p1.png',
    'assets/p2.png',
    'assets/p3.png'
  ];

  List<ListTile> ListTiles = [
    ListTile(
        title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Saving Time",
              style: TextStyle(color: Color(0xff31393c), fontSize: 20),
            )),
        subtitle: Text(
          "Hiring a professional cleaning service can reduce your workload and can certainly help you be successful in all areas of life",
          style: TextStyle(color: Color(0xff31393c), fontSize: 14),
        )),
    ListTile(
        title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Professional Service",
              style: TextStyle(color: Color(0xff31393c), fontSize: 20),
            )),
        subtitle: Text(
          "Reliable professional cleaners use certified eco-friendly cleaning equipment and cleaning products to clean your office or home.",
          style: TextStyle(color: Color(0xff31393c), fontSize: 14),
        )),
    ListTile(
        title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Covered by insurance",
              style: TextStyle(color: Color(0xff31393c), fontSize: 20),
            )),
        subtitle: Text(
          "very important when cleaning industrail facilities with valuable equipment. professional cleaning services will provide adequate protection.",
          style: TextStyle(color: Color(0xff31393c), fontSize: 14),
        )),
  ];

  OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                height: 425,
                width: double.infinity,
                child: PageView.builder(
                  controller: controller,
                  itemCount: imageUrl.length,
                  itemBuilder: (_, index) => Container(
                    child: (Column(
                      children: [
                        Container(
                            height: 200,
                            margin: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: const Color(0xFFFDFDFD),
                                image: DecorationImage(
                                  image: AssetImage(imageUrl[index]),
                                ))),
                        Container(
                          height: 100,
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFFDFDFD),
                          ),
                          child: Container(
                            child: ListTiles[index],
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              SmoothPageIndicator(
                controller: controller,
                count: imageUrl.length,
                effect: const WormEffect(
                  activeDotColor: Color(0xFF33A1FD),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xff31393c),
                        blurRadius: 5,
                        offset: Offset(3, 4),
                      )
                    ],
                    color: Color(0xFF33A1FD),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  padding: const EdgeInsets.all(18),
                  child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignupScreen()));
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xff31393c),
                        blurRadius: 5,
                        offset: Offset(3, 4),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  padding: const EdgeInsets.all(18),
                  child: Center(
                      child: Text(
                        "Create an account",
                        style: TextStyle(color: Color(0xff31393c), fontSize: 18),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}