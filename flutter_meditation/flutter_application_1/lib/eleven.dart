import 'package:flutter/material.dart';
import 'package:flutter_application_1/twelve.dart';

void main() {
  runApp(SilentMoonApp());
}

class SilentMoonApp extends StatelessWidget {
  const SilentMoonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SilentMoonScreen(),
    );
  }
}

class SilentMoonScreen extends StatelessWidget {
  const SilentMoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/Frame.png', 
              width: 414,
              height: 502,
              fit: BoxFit.cover,
            ),
          ),

          // Foreground content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Silent',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Image.asset(
                        'assets/images/logo.png',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Moon',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 150),
                  Image.asset(
                    'assets/images/Group.png',
                    width: 300,
                    height: 200,
                  ),
                  SizedBox(height: 100),
                  Text(
                    'We are what we do',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Thousand of people are using Silent Moon for small meditations',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 80),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage (),
                    ),
                  );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF6366F1),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text.rich(
                    TextSpan(
                      text: 'ALREADY HAVE AN ACCOUNT? ',
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                          text: 'LOG IN',
                          style: TextStyle(
                            color: Color(0xFF6366F1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
