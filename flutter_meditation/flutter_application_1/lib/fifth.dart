import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Platform',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Inter',
      ),
      home: LearningPlatformScreen(),
    );
  }
}

class LearningPlatformScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfef7e5),
      appBar: AppBar(
        backgroundColor: Color(0xFFfef7e5),
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black, size: 28),
        actions: [
          Icon(Icons.bookmark, color: Colors.black, size: 28),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What do you want to learn ?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search here',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChoiceChip(
                  label: Text('Beginner'),
                  selected: true,
                  onSelected: (selected) {},
                  backgroundColor: Colors.black,
                  selectedColor: Colors.black,
                  labelStyle: TextStyle(color: Colors.white),
                ),
                ChoiceChip(
                  label: Text('Intermediate'),
                  selected: false,
                  onSelected: (selected) {},
                  backgroundColor: Color(0xFFfef7e5),
                  selectedColor: Colors.black,
                  labelStyle: TextStyle(color: Colors.black),
                ),
                ChoiceChip(
                  label: Text('Advanced'),
                  selected: false,
                  onSelected: (selected) {},
                  backgroundColor: Color(0xFFfef7e5),
                  selectedColor: Colors.black,
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  CourseCard(
                    imageUrl: 'https://placehold.co/600x200',
                    rating: '4.7',
                    notes: '120',
                    video: '5 hr',
                    language: 'ENG',
                    title: 'Quick Start Python',
                    subtitle: 'Python Basics',
                  ),
                  SizedBox(height: 16),
                  CourseCard(
                    imageUrl: 'https://placehold.co/600x200',
                    rating: '4.7',
                    notes: '120',
                    video: '5 hr',
                    language: 'ENG',
                    title: 'Quick Start Python',
                    subtitle: 'Python Basics',
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

class CourseCard extends StatelessWidget {
  final String imageUrl;
  final String rating;
  final String notes;
  final String video;
  final String language;
  final String title;
  final String subtitle;

  CourseCard({
    required this.imageUrl,
    required this.rating,
    required this.notes,
    required this.video,
    required this.language,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rating $rating', style: TextStyle(fontSize: 12)),
                Text('Notes $notes', style: TextStyle(fontSize: 12)),
                Text('Video $video', style: TextStyle(fontSize: 12)),
                Text('Language $language', style: TextStyle(fontSize: 12)),
              ],
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Start'),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}