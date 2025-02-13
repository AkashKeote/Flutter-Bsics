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
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatelessWidget {
  const myHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Indian Flag
    /*
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget Space Managment"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 255, 106, 7),
              //width: 50,
              height: 100,
            ),
          ),
          Expanded(
            child: Container(
              //alignment: Alignment(5, 5),
              height: 200,
              width: 389,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                border: Border.all(color: Colors.black),
              ),
              child: Opacity(
                opacity: 0.7,
                child: Image.asset(
                  "assets/images/Ashoka_Chakra.png",
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // width: 50,
              height: 100,
              color: const Color.fromARGB(255, 18, 143, 35),
            ),
          ),
        ],
      ),
    );
  }
}
*/

    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget Space Managment"),
      ),
      body: Column(
        children: [
          Expanded(
           // flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 78, 223, 248),
             // width: 50,
             height: 100,
            ),
          ),
          Expanded(
            child: Container(
             // width: 50,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 185, 7, 255),
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          
          Container(
             // width: 50,
            height: 100,
              color: const Color.fromARGB(255, 21, 4, 255),
            ),
          
          Expanded(
            child: Container(
              color: Colors.pink,
             // width: 50,
                     height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
