import 'package:animate_do/animate_do.dart';
import 'package:final_project/view/ui/screens/chat/chat_screen.dart';
import 'package:final_project/view/ui/screens/home/home_main.dart';
import 'package:final_project/view/ui/screens/home/home_screen.dart';
import 'package:final_project/view/ui/screens/login/LogIn.dart';
import 'package:final_project/view/ui/screens/sign_Up/signUp.dart';
import 'package:final_project/view/ui/screens/sign_Up/verification_screen.dart';
import 'package:flutter/material.dart';
import 'on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:
          (context)=>LoginScreen(),
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
