//MARGIN BAHAR WALI SPACE

//PADDING ANDAR WALI SPACE COMPONENT KE
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Akash(),
    );
  }
}

class Akash extends StatelessWidget {
  const Akash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Margin and Padding"),
      ),
      body: Container(
          color: Colors.blue,
          margin: EdgeInsets.all(40),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "Margin And Padding",
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
          )),
    );
  }
}
