import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What Brings you',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'to Silent Moon?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'choose a topic to focus on:',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  buildGridItem('assets/images/1.png', 176.43, 210),
                  buildGridItem('assets/images/2.png', 176.43, 167),
                  buildGridItem('assets/images/3.png', 176.43, 167),
                  buildGridItem('assets/images/4.png', 176.43, 210),
                  buildGridItem('assets/images/5.png', 176.43, 210),
                  buildGridItem('assets/images/6.png', 176.43, 167),
                  buildGridItem('assets/images/7.png', 176.43, 210, scrollable: true),
                  buildGridItem('assets/images/8.png', 176.43, 210),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridItem(String imagePath, double width, double height, {bool scrollable = false}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: scrollable
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: height / 2,
                    color: Colors.black12,
                  ),
                  Container(
                    height: height / 2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
