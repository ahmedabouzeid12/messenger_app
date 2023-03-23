import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:messenger_app/screens/login_screen.dart';
import 'package:messenger_app/screens/register_screen.dart';

import '../widgets/buttons.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('images/logo.png'),
                ),
                Text("MessageMe",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            MyButton(
              color: Colors.yellow[900]!,
              title: 'Sign in',
              onPressed: (){
                Navigator.pushNamed(context, LoginScreen.screenRoute);
              },

            ),
            MyButton(
              color: Colors.blue[800]!,
              title: 'Register',
              onPressed: (){
                Navigator.pushNamed(context, RegisterScreen.screenRoute);
              },

            ),
          ],
        ),
      ),
    );
  }
}


