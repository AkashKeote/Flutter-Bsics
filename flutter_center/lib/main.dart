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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
        title: Text("Center Widget"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Color.fromARGB(238, 108, 108, 114),
          child: Center(
            child: Text(
              "Yeh Hai Center Widget",
              style: TextStyle(
                  fontSize: 50,
                  color: Color.fromARGB(248, 216, 197, 22),
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    );
  }
}
