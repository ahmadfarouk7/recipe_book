import 'package:flutter/material.dart';
import 'package:recipe_book/Screens/Sign_in.dart';
import 'package:recipe_book/Screens/Starting_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const StartingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/images/Loading Screen (1).png', // Replace with your image path
            fit: BoxFit.cover,
          ),
          // Content in the center
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo
                Image.asset(
                  'assets/images/image 11.png', // Replace with your logo path
                  width: 120, // Adjust logo size
                  height: 120,
                ),
                const SizedBox(height: 10),
                // Text
                const Text(
                  '100K+ Premium Recipe ', // Replace with your app name or slogan
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
