import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(206, 189, 255, 158),
            //minRadius: 1000,
            //maxRadius: 2000,
            child: SizedBox(
              width: 50,
              height: 50,
              child: Column(
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      "assets/images/images1.png",
                    ),
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 10,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
