import 'package:final_project/view/ui/screens/home/home_main.dart';
import 'package:final_project/view/ui/screens/home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../login/LogIn.dart';

class SignupScreen extends StatelessWidget
{
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var usercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Create an account to continue',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: usercontroller,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordcontroller,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (String value)
                  {
                    print(value);
                  },
                  onChanged: (String value)
                  {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    // suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(
                  height: 80,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey,
                          offset: Offset(0, 5),
                        )
                      ]
                  ),
                  child: MaterialButton(
                    onPressed: ()
                    {
                      FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailcontroller.text,
                          password: passwordcontroller.text).then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeMain()));

                      }).onError((error, stackTrace) {
                        print("Error ${error.toString()} " );
                      });
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
                                return LoginScreen();
                              }),(route) {
                                return false;
                              },);
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ],
                ),
                // Text(
                //   'create an account to continue',
                //   style: TextStyle(
                //       fontSize: 15.0,
                //       fontWeight: FontWeight.bold
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}