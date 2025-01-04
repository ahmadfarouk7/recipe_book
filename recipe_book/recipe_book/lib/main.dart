import 'package:flutter/material.dart';
import 'package:recipe_book/Screens/Sign_in.dart';
import 'package:recipe_book/Screens/Sign_up.dart';
import 'package:recipe_book/Screens/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
