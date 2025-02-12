import 'package:flutter/material.dart';
//ye mera code hai jo maine likha hai khud se pura ka pura 

void main() {
  return runApp(MyFirst());
}

class MyFirst extends StatelessWidget {
  const MyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Main.dart",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Flutter(),
    );
  }
}

class Flutter extends StatelessWidget {
  const Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi"),
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
