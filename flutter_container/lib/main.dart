import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Container',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 41, 9, 97)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Container"),
        ),
        body: Container(
          width: 150,
          height: 120,
          color: Color.fromARGB(157, 36, 165, 165),
          child: Column(
            children: [
              Text("Hi 1"),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Text("Hi 2"),
            ],
          ),
        ));
  }
}
