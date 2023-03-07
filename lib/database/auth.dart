import 'package:final_project/view/ui/screens/login/LogIn.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../view/ui/screens/home/home_main.dart';
class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context , snapshot){
          if(snapshot.hasData){
            return HomeMain();
          }else{

            return LoginScreen();

          }
        }
        ),
      ) ,
    );
  }
}