import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:crystalapp/RoundButton.dart';


const kTextFieldDecoration=InputDecoration(
  hintText: 'Enter the value',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);


class Login extends StatefulWidget {
  static const String id='login_screen';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

   String email;
   String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Login',
          style: TextStyle(

            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(

          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                 SizedBox(
                  height: 48.0,
                ),
                TextField(

                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    email=value;
                  },

                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your email',
                  )
                ),


                SizedBox(
                  height: 8.0,
                ),
                 TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      //Do something with the user input.
                      password = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your password',
                    )),

                 SizedBox(
                  height: 24.0,
                ),
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
