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
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons In Dart"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.orange),
              ),
              child: Text("Click Me"),
              onPressed: () {
                debugPrint("Text Button Clicked");
              },
              onLongPress: () {
                print("Long press");
              },
              onHover: (value) {
                print("Hover");
              },
            ),
            ElevatedButton(
              child: Text("Elevated Button || Rised "),
              onPressed: () {
                debugPrint("Rised/Elevated");
              },
            ),
            OutlinedButton(
              onPressed: () {
                print("Outline Button pressed");
              },
              child: Text("Outline Button"),
            ),
          ],
        ),
      ),
      //body:
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
