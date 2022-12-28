import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chamithtech/pages/home.dart';

Future<void> main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AnimatedSplashScreen(
        duration: 2000,
        splash: Image(width: 200.0,height: 210.0,image: new AssetImage("assets/logo2.png")),
        splashIconSize: 180.0,
        nextScreen: Home(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.green[200]
      ),
    );
  }
}

