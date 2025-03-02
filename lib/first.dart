import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Effective Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',
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
      backgroundColor: Color(0xFFFFFBE6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          FontAwesomeIcons.leaf,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '244',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://storage.googleapis.com/a1aa/image/JhRowPVpww7p84gVrHEMKew21h_9SmGb3zEMNPIoZn4.jpg'),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        FontAwesomeIcons.bell,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Effective Learning\nInstant Impact',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.user,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Shardha Raut, Prof. Of Dsa',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Yoga Jivamukti',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '10-09-2024',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 4, horizontal: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            'Not Completed',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text('Open'),
                              SizedBox(width: 8),
                              Icon(FontAwesomeIcons.arrowRight),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending Courses',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTrendingCourseIcon(FontAwesomeIcons.book, 'Course'),
                  _buildTrendingCourseIcon(FontAwesomeIcons.fire, 'Streak'),
                  _buildTrendingCourseIcon(FontAwesomeIcons.percentage, 'Progress'),
                  _buildTrendingCourseIcon(FontAwesomeIcons.bolt, 'Quizes'),
                  _buildTrendingCourseIcon(FontAwesomeIcons.robot, 'Ai Courses'),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Recent Courses',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              _buildRecentCourse('How to sleep well at night ?'),
              SizedBox(height: 8),
              _buildRecentCourse('Entrepreneurship and Startup Growth'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFFFFBE6),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(FontAwesomeIcons.home, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.book, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.cog, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.user, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTrendingCourseIcon(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildRecentCourse(String title) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(FontAwesomeIcons.book, color: Colors.black),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}