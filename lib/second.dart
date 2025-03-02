import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SchedulePage(),
    );
  }
}

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 20),
              _buildActionButtons(),
              const SizedBox(height: 20),
              const Text(
                'Check your schedule now',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: const [
                    ScheduleItem(
                      color: Colors.purple,
                      title: 'Making a birthday cake',
                      time: '07:30 AM',
                      icon: Icons.cake,
                      isLarge: true,
                    ),
                    ScheduleItem(
                      color: Colors.amber,
                      title: 'Claim voucher shopai',
                      time: '10:15 AM',
                      icon: Icons.card_giftcard,
                      isLarge: true,
                    ),
                    ScheduleItem(
                      color: Colors.lightGreen,
                      title: 'Workout - Arm day',
                      time: '12:30 PM',
                      icon: Icons.fitness_center,
                      isLarge: true,
                    ),
                    ScheduleItem(
                      color: Colors.black,
                      title: 'Meeting With Client',
                      time: '02:30 PM',
                      icon: Icons.meeting_room,
                      description: 'At this meeting, we will discuss the brief',
                      date: 'Wed 19 Jun',
                      attendees: [
                        'assets/avatar1.png',
                        'assets/avatar2.png',
                        'assets/avatar3.png',
                      ],
                      isLarge: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/profile.png'),
          radius: 24,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Michele Kim',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Free Account',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        const Spacer(),
        const Icon(Icons.refresh, color: Colors.grey),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _customButton(label: 'Today', color: Colors.black),
        _customButton(label: 'Calendar', color: Colors.white, textColor: Colors.black),
        FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  Widget _customButton({required String label, required Color color, Color textColor = Colors.white}) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(label, style: TextStyle(color: textColor)),
    );
  }
}

class ScheduleItem extends StatelessWidget {
  final Color color;
  final String title;
  final String time;
  final IconData icon;
  final String? description;
  final String? date;
  final List<String>? attendees;
  final bool isLarge;

  const ScheduleItem({
    super.key,
    required this.color,
    required this.title,
    required this.time,
    required this.icon,
    this.description,
    this.date,
    this.attendees,
    this.isLarge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white, size: isLarge ? 28 : 24),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            time,
            style: const TextStyle(color: Colors.white70, fontSize: 16),
          ),
          if (description != null) ...[
            const SizedBox(height: 10),
            Text(description!, style: const TextStyle(color: Colors.white, fontSize: 16)),
          ],
          if (date != null && attendees != null) ...[
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(label: const Text('Work', style: TextStyle(color: Colors.white)), backgroundColor: Colors.green),
                Text(date!, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                Row(
                  children: attendees!
                      .map((url) => Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: CircleAvatar(backgroundImage: AssetImage(url), radius: 14),
                          ))
                      .toList(),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
