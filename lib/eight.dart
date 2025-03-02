import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Start Python',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        fontFamily: 'Inter',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow[100],
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          'Quick Start Python',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.bookmark_border, color: Colors.black),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Python Basics',
                style: TextStyle(color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                      'https://storage.googleapis.com/a1aa/image/-fV2kBYS65t1qGpW9YuZpi-xfB2Z7Ud5EcX5mI-lKRY.jpg',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                        size: 64,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildTabButton('Notes', Colors.grey[200]!, Colors.grey[700]!),
                  _buildTabButton('Quizzes', Colors.black, Colors.white),
                  _buildTabButton(
                      'Materials', Colors.grey[200]!, Colors.grey[700]!),
                ],
              ),
              SizedBox(height: 16),

              /// ✅ Progress Bar Integrated Here
              ProgressBar(progress: 0.6), // 60% Progress

              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey[300] ?? Colors.grey),
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What will be the output of the following expression bool([])?',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    _buildOptionButton('True', Colors.white, Colors.grey[300]!),
                    _buildOptionButton(
                        'False', Colors.green[100]!, Colors.green[500]!),
                    _buildOptionButton(
                        'Error', Colors.white, Colors.grey[300]!),
                    _buildOptionButton(
                        'None', Colors.red[100]!, Colors.red[500]!),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabButton(String text, Color bgColor, Color textColor) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }

  Widget _buildOptionButton(String text, Color bgColor, Color borderColor) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

/// ✅ ProgressBar Widget
class ProgressBar extends StatelessWidget {
  final double progress;

  const ProgressBar({super.key, required this.progress});
 
  @override
  Widget build(BuildContext context) {
    return // 60% progress

Container(

  height: 30, // Increased height
  width: double.infinity,
  decoration: BoxDecoration(
    color: Colors.lightGreen[300], // Light green background
    borderRadius: BorderRadius.circular(8),
  ),
  child: Stack(
    children: [
      FractionallySizedBox(
        widthFactor: progress, // Progress percentage
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green[700], // Dark green progress
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      Center( // Centering the text inside the progress bar
        child: Text(
          "${(progress * 100).toInt()}% Progress",
          style: TextStyle(
            color: Colors.white, // White text for contrast
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  ),
);
  }
}
