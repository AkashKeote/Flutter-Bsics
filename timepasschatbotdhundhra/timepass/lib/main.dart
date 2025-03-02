import 'package:flutter/material.dart';
import 'package:timepass/chatbot.dart';

void main() {
  runApp(ArobixApp());
}

class ArobixApp extends StatelessWidget {
  const ArobixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ArobixHomePage(),
      theme: ThemeData(
        fontFamily: 'Inter',
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}

class ArobixHomePage extends StatefulWidget {
  const ArobixHomePage({super.key});

  @override
  _ArobixHomePageState createState() => _ArobixHomePageState();
}

class _ArobixHomePageState extends State<ArobixHomePage> {
  final TextEditingController _controller = TextEditingController();
  int _selectedIndex = 0;

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      print('Sending: ${_controller.text}');
      _controller.clear();
    }
  }

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFF5F7FA), Color(0xFFC3CFE2)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.menu, color: Colors.black),
                  onPressed: () {},
                ),
                title: Text(
                  'Chatbot Ui',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.notifications, color: Colors.black),
                    onPressed: () {},
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'AI Assistant',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hey, Akash Keote\nI\'m your assistant,\nHow can I assist you today..?',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontWeight: FontWeight.w300,
                              height: 1.4,
                            ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                hintText: 'Chat with Chatbot...',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor:
                                    const Color.fromARGB(166, 255, 255, 255),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 16),
                              ),
                              onSubmitted: (_) => _sendMessage(),
                            ),
                          ),
                          SizedBox(width: 12),
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.black,
                            child: IconButton(
                              icon: Icon(Icons.send, size: 20),
                              color: const Color.fromARGB(202, 255, 255, 255),
                              onPressed: () {
                                _sendMessage();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChatScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Quick Access',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: _FeatureCard(
                              icon: Icons.favorite_border,
                              title: 'Health',
                              description:
                                  'Manage health conditions and track your fitness progress.',
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: _FeatureCard(
                              icon: Icons.movie_creation_outlined,
                              title: 'Entertainment',
                              description:
                                  'Personalized recommendations based on your preferences.',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Recent Prompt',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      SizedBox(height: 16),
                      _RecentPromptCard(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _FeatureCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(icon, color: Colors.purple, size: 32),
            SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _RecentPromptCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.chat_bubble_outline, color: const Color.fromARGB(255, 158, 158, 158), size: 24),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                'I need help with managing...',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const _CustomBottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          backgroundColor: const Color.fromARGB(97, 255, 255, 255),
          selectedItemColor: Colors.purple,
          unselectedItemColor: const Color.fromARGB(255, 46, 20, 20),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_filled),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets_outlined),
              activeIcon: Icon(Icons.widgets),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
