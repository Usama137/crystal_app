import 'package:flutter/material.dart';
import 'package:crystalapp/RoundButton.dart';
import 'loginScreen.dart';
class WelcomeScreen extends StatefulWidget {
  static const String id='welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/page1.jpg",
                ),
                //fit: BoxFit.cover,
                alignment: Alignment.topLeft,
              )),


          child: Padding(

            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: <Widget>[
                SizedBox(
                  height: 70.0,
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

            Text(
              'Crystal Recognition',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            ],
          ),
                SizedBox(
                  height: 30.0,
                ),
                RoundedButton(
                  title: 'Log In',
                  colour: Colors.lightBlueAccent,
                  onPressed: (){
                    Navigator.pushNamed(context, Login.id);
                  },),
                RoundedButton(
                  title: 'Register',
                  colour: Colors.lightBlue,
                  onPressed: (){
                    Navigator.pushNamed(context, Login.id);
                  },
                )

  ],
    ),
    ),
        ),
      ),
    );
  }
}
