import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuickStartPython(),
    );
  }
}

class QuickStartPython extends StatelessWidget {
  const QuickStartPython({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          'Quick Start Python',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.menu, color: Colors.black),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Python Basics',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Python is one of the easiest and most versatile programming languages to learn, and this short course is designed to give you a solid foundation in just a few hours. Whether you're a complete beginner or someone looking to refresh your basics, this course will guide you step-by-step through the essentials of Python programming.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "You’ll start with setting up Python and understanding how to write your first lines of code. Next, you’ll explore variables, data types, and how to handle user input, which are the building blocks of any Python program. Moving forward, you’ll dive into control flow with if/else statements and loops, helping you make your programs dynamic and responsive.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Slider(
                value: 0.5,
                onChanged: (value) {},
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavBarIcon(Icons.mic, Colors.black, Colors.white),
                _buildNavBarIcon(Icons.headset, Colors.black, Colors.white),
                _buildNavBarIcon(Icons.text_fields,
                    const Color.fromARGB(215, 201, 199, 74), Colors.white),
                _buildNavBarIcon(Icons.settings, Colors.black, Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavBarIcon(IconData icon, Color bgColor, Color iconColor) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(icon, color: iconColor, size: 30),
    );
  }
}
