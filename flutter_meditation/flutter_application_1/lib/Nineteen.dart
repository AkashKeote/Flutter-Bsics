import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HappyMorningScreen(),
    );
  }
}

class HappyMorningScreen extends StatelessWidget {
  const HappyMorningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 288.78,
                  color: Colors.grey[300],
                  child: Center(
                    child: Image.asset("assets/images/16.png"),
                  ),
                ),
                Positioned(
                  top: 60, // पहले 40 था, अब इसे 60 किया
                  left: 16,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.white.withOpacity(0.5),
                    ),
                    onPressed: () {
                      Navigator.pop(context); // बैक बटन फंक्शनल बनाना
                    },
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 10,
                  child: Row(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.black.withOpacity(0.5),
                        ),
                        onPressed: () {
                          print("Favorite Clicked");
                        },
                        child: Icon(Icons.favorite, color: Colors.white),
                      ),
                      // कम स्पेस
                      TextButton(
                        style: TextButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.black.withOpacity(0.5),
                        ),
                        onPressed: () {
                          print("Share Clicked");
                        },
                        child: Icon(Icons.share, color: Colors.white),
                      ),
                      // कम स्पेस
                      TextButton(
                        style: TextButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Colors.black.withOpacity(0.5),
                        ),
                        onPressed: () {
                          print("Download Clicked");
                        },
                        child: Icon(Icons.download, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Happy Morning',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'COURSE',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[500],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Ease the mind into a restful night’s sleep with these deep, ambient tones.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.pink),
                      SizedBox(width: 4),
                      Text('24,234 Favorites'),
                      SizedBox(width: 16),
                      Icon(Icons.headset, color: Colors.blue),
                      SizedBox(width: 4),
                      Text('34,234 Listening'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Pick a Narrator',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'MALE VOICE',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'FEMALE VOICE',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  buildAudioItem('Focus Attention', '10 MIN'),
                  buildAudioItem('Body Scan', '5 MIN'),
                  buildAudioItem('Making Happiness', '3 MIN'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAudioItem(String title, String duration) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.play_arrow, color: Colors.white),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  duration,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(height: 32),
      ],
    );
  }
}
