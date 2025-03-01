import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuickStartPythonPage(),
    );
  }
}

class QuickStartPythonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF7E8),
      appBar: AppBar(
        backgroundColor: Color(0xFFFEF7E8),
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          Icon(Icons.bookmark_border, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Quick Start Python',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                'Python Basics',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 16),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    'https://storage.googleapis.com/a1aa/image/lyWrWNvDsbC6Dqcc_gxaFM1UlGVpyRXuoYEoreddlCE.jpg',
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
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: StadiumBorder(),
                  ),
                  child: Text('Notes'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.grey[600], backgroundColor: Colors.grey[200],
                    shape: StadiumBorder(),
                  ),
                  child: Text('Quizzes'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.grey[600], backgroundColor: Color(0xFFFEF7E8),
                    shape: StadiumBorder(),
                  ),
                  child: Text('Materials'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Master the basics of variables, data types, loops, and control flow while gaining hands-on experience with real-world examples.',
                    style: TextStyle(color: Colors.black87),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Image.network(
                      'https://storage.googleapis.com/a1aa/image/24m6pWO3HGzzqOp2UBCOcIWNzdbP8ZFkfKGbalqjJy8.jpg',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'By the end of this course, you\'ll have the skills to write simple programs and complete a mini-project: building a To-Do List app.',
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}