import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Font',
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Custom Font"),
      ),
      body: Expanded(
        child: Center(
          child: Column(
            children: [
              Text(
                'This is Google Fonts',
                style:
                    GoogleFonts.robotoCondensed(textStyle: TextStyle(fontSize: 50)),
              ),
              Text("This is Roboto",style: TextStyle(fontFamily: 'Roboto',fontSize: 50),)
            ],
          ),
        ),
      ),
    );
  }
}
