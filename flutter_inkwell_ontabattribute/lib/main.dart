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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell"),
      ),
      /* body: Container(
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Elevated Button Hai Ye wali"),
        ),
      ),*/
      body: Center(
        child: InkWell(
          onLongPress: () => print("Long Press"),
          onTap: () => print("data"),
          onDoubleTap:() => print("Double tapp"),
          onHover: (value) => print("Hover"),
          child: Container(
            
            child: ElevatedButton(onPressed: ()=>print("Elevated"), child: InkWell(
              onTap: () => print("Dab gaya text"),
              child: Text("Muze dabao to"))),
            width: 200,
            height: 200,
            color: Color.fromARGB(255, 32, 240, 255),
          ),
        ),
      ),
    );
  }
}
