import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'loginScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome_screen',
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          Login.id: (context) => Login(),
        }
    );
  }
}
