import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MeetingWithYogaScreen(),
    );
  }
}

class MeetingWithYogaScreen extends StatelessWidget {
  const MeetingWithYogaScreen({super.key});

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
                  Icon(Icons.arrow_back, size: 24),
                  Icon(Icons.edit, size: 24),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Meeting\nWith Yoga',
                style: TextStyle(
                  fontFamily: 'LexendDeca',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Work',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Thu 23, Jan'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'At this meeting we will discuss the berif for the mobile app theat weill be butlt bh the team',
                style: TextStyle(color: Colors.grey[600],fontSize: 20),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: SizedBox(
                 
                  child: Column(
                    
                    children: [
                      
                      MeetingOption(
                          icon: Icons.videocam,
                          title: 'Yoga',
                          time: '20.30 Pm',
                          action: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.purple[700],
                              backgroundColor: Colors.purple[200],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text('Join'),
                          ),
                        ),
                    
                      SizedBox(height:20),
                      MeetingOption(
                        icon: Icons.videocam,
                        title: 'Yoga live',
                        time: '20.30 Pm',
                      ),
                      SizedBox(height: 20),
                      MeetingOption(
                        icon: Icons.notifications,
                        title: 'Yoga dance',
                        time: '20.30 Pm',
                        action: Switch(
                          value: true,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('Accept',style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MeetingOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final String time;
  final Widget? action;

  const MeetingOption({
    super.key,
    required this.icon,
    required this.title,
    required this.time,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(icon, color: Colors.white),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    time,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          if (action != null) action!,
        ],
      ),
    );
  }
}
