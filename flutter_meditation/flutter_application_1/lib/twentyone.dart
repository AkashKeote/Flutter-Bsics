import 'package:flutter/material.dart';

void main() {
  runApp(MeditateApp());
}

class MeditateApp extends StatelessWidget {
  const MeditateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MeditateScreen(),
    );
  }
}

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Meditate',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCategoryButton(Icons.grid_view, 'All', true),
                _buildCategoryButton(Icons.favorite, 'My', false),
                _buildCategoryButton(Icons.sentiment_dissatisfied, 'Anxious', false),
                _buildCategoryButton(Icons.nightlight_round, 'Sleep', false),
                _buildCategoryButton(Icons.child_care, 'Kids', false),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildDailyCalmCard(),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 176.43,
                          height: 210,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/18.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 150),
                              Text(
                                '7 Days of Calm',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 176.43,
                          height: 167,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/19.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 105),
                              Text(
                                'Anxiety Release',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 176.43,
                          height: 218.14,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/21.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 100),
                              Text(
                                'Sea Waves',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 180, 139, 139),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 176.43,
                          height: 210,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/20.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 130),
                              Text(
                                'Peace of Mind',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: 2, // Select the Meditate button
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.nightlight_round),
            label: 'Sleep',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement),
            label: 'Meditate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Afsar',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(IconData icon, String label, bool isSelected) {
    return GestureDetector(
      onTap: () {
        // Handle button tap
      },
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: isSelected ? Colors.blue[100] : Colors.grey[200],
            child: Icon(icon, color: isSelected ? Colors.blue : Colors.grey),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
                color: isSelected ? Colors.blue : Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildDailyCalmCard() {
    return GestureDetector(
      onTap: () {
        // Handle card tap
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/22.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daily Calm',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  'APR 30 • PAUSE PRACTICE',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.play_circle_fill, color: Colors.grey, size: 40),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}