import 'package:flutter/material.dart';
import 'package:recipe_book/Screens/Sign_in.dart';
import 'package:recipe_book/Screens/Starting_Screen.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/Loading Screen (1).png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
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
                const SizedBox(
                  height: 150,
                ),
                const Text(
                  'Recipe Rleam', // Replace with your app name or slogan
                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Simple way to find Tasty Recipe', // Replace with your app name or slogan
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 140,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        backgroundColor: const Color(0xff129575),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Start Cooking',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ),
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
