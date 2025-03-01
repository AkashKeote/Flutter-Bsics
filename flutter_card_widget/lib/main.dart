import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card Widget",style: TextStyle(fontWeight: FontWeight.w900),),),
      body: Center(
        child: Card(
          
          elevation: 17,
          shadowColor: const Color.fromARGB(255, 255, 7, 7),
          color: const Color.fromARGB(255, 165, 214, 255),
          child: Padding(
            //3-7 ke bich hona elevation
            padding: const EdgeInsets.all(4),
            child: Text("Card widget",style: TextStyle(fontSize: 33),),
          ),
        ),
      ),
    );
  }
}