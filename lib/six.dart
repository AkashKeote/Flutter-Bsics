import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuickStartPythonScreen(),
    );
  }
}

class QuickStartPythonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.bookmark_border, color: Colors.black),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.share, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.yellow[100],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Quick Start Python',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Python Basics',
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Rating',
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                  Text(
                                    '4.7',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Notes',
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                  Text(
                                    '120',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Language',
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                  Text(
                                    'ENG',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Video',
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                  Text(
                                    '5 hr',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.book, color: Colors.white),
                              Text(
                                'Read',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            height: 24,
                            child: VerticalDivider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          Column(
                            children: [
                              Icon(Icons.play_circle_fill, color: Colors.white),
                              Text(
                                'Start',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Learn Python, one of the most beginner-friendly and versatile programming languages, in just a few hours! This course is perfect for absolute beginners and covers everything from setting up Python to creating your first project. Master the basics of variables, data types, loops, and control flow while gaining hands-on experience with real-world examples.',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'By the end of this course, you\'ll have the skills to write simple programs and complete a mini-project: building a To-Do List app. Start your Python journey today and unlock endless possibilities in coding!',
                            style: TextStyle(color: Colors.grey[700]),
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
      ),
    );
  }
}