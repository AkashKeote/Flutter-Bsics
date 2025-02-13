/*ROWS AND COL kE BAAD DESIGN BANA SAKTE 
KHALI SPACE 
SPACE ALLOCATE KARNE ME DIKKAT 
EFFECTIVELY RATION ME CHILD KO DIVIDE REMANING SPACE CHILD KO ALLOCATE 

JAHA PAR SPACE MILEGI APNE ROW AND CHILD KO EXAPND KAR DEGA*/


import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
