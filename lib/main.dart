import 'package:aashpaz_sho/navigator.dart';
import 'package:aashpaz_sho/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Directionality( // add this
      textDirection: TextDirection.rtl, // set this property
      child: Directionality( // add this
        textDirection: TextDirection.rtl, // set this property
        child: Navigation(),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        animationDuration: const Duration(seconds: 4),
        backgroundColor: Colors.black,
        splash: const Icon(
          Icons.fastfood_outlined,
          size: 70,
          color: Colors.white,
        ),
        duration: 4000,
        nextScreen: const HomePage(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
