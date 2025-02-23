import 'package:flutter/material.dart';
import 'package:flutter_theme_style_/ui_helper/util.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
              displayLarge: TextStyle(
                  fontSize: 25,
                  color: const Color.fromARGB(255, 73, 255, 1),
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic),
              headlineSmall: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87),
              headlineMedium: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  color: Colors.deepOrangeAccent))),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THEME_AND_STYLE"),
        backgroundColor: const Color.fromARGB(151, 255, 238, 0),
      ),
      body: Column(
        children: [
          Text(
            "Hello Bold",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Hello Light",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            "Hello Bold",
            style: Theme.of(context).textTheme.displayLarge!.copyWith(color: const Color.fromARGB(255, 64, 163, 255)),
          ),
          Text("Hello Light", style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold,color: Colors.purpleAccent)),
          Text("Ye Util Class Ka Text Hai my11",style: mTextStyle11().copyWith(fontWeight: FontWeight.w900,color: Colors.pink,fontSize: 22),),
           Text("Ye Util Class Ka Text Hai my22",style: mTextStyle22().copyWith(fontWeight: FontWeight.w900,color: Colors.deepOrange),),
            Text("Ye Util Class Ka Text Hai my33",style: mTextStyle33().copyWith(fontWeight: FontWeight.w900,color: Colors.green),),
            Text("Paramterized in Util CLass",style: myParameter(color: Colors.lightGreen,weight: FontWeight.w900).copyWith(fontSize: 33)),

        ],
      ),
    );
  }
}
