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
      home: LoginPage(),
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.grey, size: 30),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 60),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF1877F2),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: FaIcon(FontAwesomeIcons.facebookF),
                label: Text('CONTINUE WITH FACEBOOK'),
                onPressed: () {},
              ),
              SizedBox(height: 20),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.grey[700],
                  minimumSize: Size(double.infinity, 50),
                  side: BorderSide(color: Colors.grey[300]!),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
                label: Text('CONTINUE WITH GOOGLE'),
                onPressed: () {},
              ),
              SizedBox(height: 30),
              Text(
                'OR LOG IN WITH EMAIL',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email address',
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF7F83FF),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text('LOG IN'),
                onPressed: () {},
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 40),
              Text.rich(
                TextSpan(
                  text: 'ALREADY HAVE AN ACCOUNT? ',
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'SIGN UP',
                      style: TextStyle(color: Color(0xFF7F83FF)),
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
}
