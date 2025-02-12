import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Content Fail Gaya"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Allow horizontal scrolling
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
         
          children: [
            // First Column
            SizedBox(
              width: 300, // Fixed width
              child: Column(
                mainAxisSize: MainAxisSize.min, // Prevent stretching
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(150, 245, 204, 25),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "Strawberry Pavlova",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 46, 160, 212),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Text(
                      '''Pavlova is a meringue-based
dessert named after the Russian
ballerina Anna Pavlova.
Pavlova features a crisp crust 
and soft, light inside, topped 
with fruit and whipped cream.''',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Center(
                      child: Text(
                        '''Pavlova is a meringue-based
dessert named after the Russian
ballerina Anna Pavlova.''',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Line 5",
                      style: TextStyle(
                        backgroundColor: Color.fromARGB(235, 216, 164, 51),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 20), // Space between Column and Image

            // Image Column
            SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.9, // Make image fit screen width
              child: SingleChildScrollView(
                scrollDirection:
                    Axis.horizontal, // Allow scrolling if image is too wide
                child: Image.asset(
                  "assets/images/flut.png",
                  width: 600, // Adjust width as needed
                  height: 400, // Adjust height to prevent overflow
                  fit: BoxFit
                      .contain, // Keep aspect ratio and prevent stretching
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
