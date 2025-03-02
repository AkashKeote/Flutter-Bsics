import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScheduleScreen(),
    );
  }
}

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF9C4),
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
                        radius: 24,
                        backgroundImage: NetworkImage('https://placehold.co/50x50'),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Yasir Sheikh',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'B.Tech, CSE, 3rd Sem',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.notifications, color: Colors.grey[600]),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text('Today'),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Text('Calendar'),
                    ),
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.purple,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Check Your schedule Now',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('March', style: TextStyle(color: Colors.grey[600])),
                  Text('January', style: TextStyle(color: Colors.grey[600])),
                  Text('February', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  Text('April', style: TextStyle(color: Colors.grey[600])),
                  Text('May', style: TextStyle(color: Colors.grey[600])),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('14', style: TextStyle(fontSize: 18)),
                      Text('Fri', style: TextStyle(color: Colors.grey[600])),
                    ],
                  ),
                  Column(
                    children: [
                      Text('15', style: TextStyle(fontSize: 18)),
                      Text('Sat', style: TextStyle(color: Colors.grey[600])),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 32,
                        height: 64,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text('16', style: TextStyle(color: Colors.white, fontSize: 18)),
                        ),
                      ),
                      Text('Sun', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('17', style: TextStyle(fontSize: 18)),
                      Text('Mon', style: TextStyle(color: Colors.grey[600])),
                    ],
                  ),
                  Column(
                    children: [
                      Text('18', style: TextStyle(fontSize: 18)),
                      Text('Tue', style: TextStyle(color: Colors.grey[600])),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: [
                    TaskItem(time: '08.00', title: 'Working on ui ux design', description: 'Continuing hifi home page -story page with feedback', color: Colors.yellow),
                    TaskItem(time: '09.21', title: 'Working on ui ux design', description: 'Continuing hifi home page -story page with feedback', color: Colors.green),
                    TaskItem(time: '09.21', title: 'Working on ui ux design', description: 'Continuing hifi home page -story page with feedback', color: Colors.blue),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final String time;
  final String title;
  final String description;
  final Color color;

  TaskItem({required this.time, required this.title, required this.description, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(time, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(width: 16),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 4,
                    height: 60,
                    color: color,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 4),
                        Text(description, style: TextStyle(color: Colors.grey[600])),
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