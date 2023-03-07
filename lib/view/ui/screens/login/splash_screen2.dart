import 'package:animate_do/animate_do.dart';
import 'package:final_project/view/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'splash_screen2.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:
          (context)=>HomeScreen(),
      ), (route) => true);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff6f9fe),
        body: ElasticInUp(
          duration: Duration(seconds: 3),
          // delay: Duration(seconds: 2),
          child: Image(
            image: AssetImage("assets/splash.png"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        )
    );
  }
}
