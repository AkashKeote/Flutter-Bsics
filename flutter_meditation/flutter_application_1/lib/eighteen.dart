import 'package:flutter/material.dart';

void main() {
  runApp(SilentMoonApp());
}

class SilentMoonApp extends StatelessWidget {
  const SilentMoonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Silent Moon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Silent',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 5),
            Image.asset(
              'assets/images/logo.png',
              height: 30,
              width: 30,
            ),
            SizedBox(width: 5),
            Text(
              'Moon',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning, Afsar',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'We Wish you have a good day',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/12.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50),
                            Text(
                              'Basics',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'COURSE',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 40),
                            Row(
                              children: [
                                Text(
                                  '3-10 MIN',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(width: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor:
                                        const Color.fromARGB(255, 0, 0, 0),
                                    backgroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(23),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                  ),
                                  child: Text('START',
                                      style: TextStyle(fontSize: 12)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/11.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50),
                            Text(
                              'Relaxation',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 15, 0, 0),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'MUSIC',
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 10, 0, 0)),
                            ),
                            SizedBox(height: 40),
                            Row(
                              children: [
                                Text(
                                  '3-10 MIN',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromARGB(255, 0, 0, 0)),
                                ),
                                SizedBox(width: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 0, 0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(23),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                  ),
                                  child: Text('START',
                                      style: TextStyle(fontSize: 12)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Card(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/13.png'), // AssetImage use karein
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Daily Thought',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'MEDITATION • 3-10 MIN',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                        ),
                        child: Icon(Icons.play_arrow),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Recommended for you',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ImageTextCard(
                    imageUrl:
                        'https://storage.googleapis.com/a1aa/image/EMyw4MWvJD_qHUOXl8nE6rW66-RDInYpX8UI8gbNGP0.jpg',
                    title: 'Focus',
                    subtitle: 'MEDITATION • 3-10 MIN',
                  ),
                  ImageTextd(
                    imageUrl:
                        'https://storage.googleapis.com/a1aa/image/ZUpTZUTULa2sSJ0lnPyrSELkgRONs2kDlBcEGDxL9IA.jpg',
                    title: 'Happiness',
                    subtitle: 'MEDITATION • 3-10 MIN',
                  ),
                  ImageTextCard(
                    imageUrl:
                        'https://storage.googleapis.com/a1aa/image/EMyw4MWvJD_qHUOXl8nE6rW66-RDInYpX8UI8gbNGP0.jpg',
                    title: 'Focus',
                    subtitle: 'MEDITATION • 3-10 MIN',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
  color: Colors.white, // Background color
  shape: CircularNotchedRectangle(),
  notchMargin: 8.0,
  child: SizedBox(
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BottomNavigationItem(
          icon: Icons.home,
          label: 'Home',
          isSelected: true, // Highlighted item
          activeColor: Colors.blue, // Active color for selection
        ),
        BottomNavigationItem(
          icon: Icons.nightlight_round,
          label: 'Sleep',
          isSelected: false,
          activeColor: Colors.grey,
        ),
        BottomNavigationItem(
          icon: Icons.spa,
          label: 'Meditate',
          isSelected: false,
          activeColor: Colors.grey,
        ),
        BottomNavigationItem(
          icon: Icons.music_note,
          label: 'Music',
          isSelected: false,
          activeColor: Colors.grey,
        ),
        BottomNavigationItem(
          icon: Icons.person,
          label: 'Afsar',
          isSelected: false,
          activeColor: Colors.grey,
        ),
      ],
    ),
  ),
),
    );
  }
}

class RecommendedCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const RecommendedCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[200],
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: 50,
              width: 50,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final Color activeColor;

  const BottomNavigationItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isSelected ? activeColor : Colors.grey,
          size: 30,
        ),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? activeColor : Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class ImageTextCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ImageTextCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageTextd extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ImageTextd({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: const Color.fromARGB(111, 0, 0, 0),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
