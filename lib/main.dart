import 'package:aashpaz_sho/data/class.dart';
import 'package:aashpaz_sho/data/data.dart';
import 'package:aashpaz_sho/navigator.dart';
import 'package:aashpaz_sho/screens/about.dart';
import 'package:aashpaz_sho/screens/favorites.dart';
import 'package:aashpaz_sho/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:hive_flutter/adapters.dart';

const String RecipeBok = "favorites";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(RecipeAdapter());
  await Hive.openBox<Recipe>(RecipeBok);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Directionality(
        // add this
        textDirection: TextDirection.rtl, // set this property
        child: Directionality(
          // add this
          textDirection: TextDirection.rtl, // set this property
          child: Navigation(),
        ),
      ),
      routes: {
        'about': (_) => const About(),
      },
    ),
  );
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
