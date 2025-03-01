import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Courses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF7D6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://placehold.co/40x40'),
                    radius: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications, color: Colors.grey[700]),
                      SizedBox(width: 16),
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://placehold.co/40x40'),
                        radius: 20,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Custom Courses,',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Instant Results',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'What do you want to learn?',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search here',
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.auto_fix_high),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Choose your learning level',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    label: Text('Beginner'),
                    selected: true,
                    onSelected: (selected) {},
                    selectedColor: Colors.black,
                    backgroundColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  ChoiceChip(
                    label: Text('Intermediate'),
                    selected: false,
                    onSelected: (selected) {},
                    backgroundColor: Colors.white,
                  ),
                  ChoiceChip(
                    label: Text('Advanced'),
                    selected: false,
                    onSelected: (selected) {},
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending Courses',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
              SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TrendingCourseChip(number: '#1', label: 'Python'),
                    TrendingCourseChip(number: '#2', label: 'Blockchain Basics'),
                    TrendingCourseChip(number: '#3', label: 'Cybersecurity'),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Recent Courses',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListView(
                    children: [
                      RecentCourseTile(
                        title: 'Effective Communication Skills',
                      ),
                      RecentCourseTile(
                        title: 'Entrepreneurship and Startup Growth',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TrendingCourseChip extends StatelessWidget {
  final String number;
  final String label;

  TrendingCourseChip({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            child: Text(
              number,
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 8),
          Chip(
            label: Text(label),
            backgroundColor: Colors.white,
            shape: StadiumBorder(
              side: BorderSide(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class RecentCourseTile extends StatelessWidget {
  final String title;

  RecentCourseTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          leading: Icon(Icons.book, color: Colors.grey[700]),
          title: Text(title),
        ),
      ),
    );
  }
}