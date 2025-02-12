import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    var names = ['Akash', 'Jay', 'Maza', 'Deno'];
    return Scaffold(
      appBar: AppBar(
        title: Text("List View vs List View Builder"),
      ),
      // body: ListView(

      //     children: [

      //         Container(
      //           height: 150,
      //           child: ListView(
      //                   scrollDirection: Axis.horizontal,
      //                     children: [
      //                    Padding(
      //                      padding: const EdgeInsets.all(8.0),
      //                      child: Text( "One",
      //                       style: TextStyle(
      //             color: Color.fromARGB(255, 13, 186, 255),
      //             fontWeight: FontWeight.bold,fontSize: 20),
      //                ),
      //                    ),

      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Text(
      //                     "Two",
      //                     style: TextStyle(
      //           color: Color.fromARGB(248, 13, 186, 255),
      //           fontWeight: FontWeight.bold,fontSize: 20),
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Text(
      //                     "Three",
      //                     style: TextStyle(
      //           color: Color.fromARGB(246, 13, 186, 255),
      //           fontWeight: FontWeight.bold,fontSize: 20),
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Text(
      //                     "Four",
      //                     style: TextStyle(
      //           color: Color.fromARGB(255, 13, 186, 255),
      //           fontWeight: FontWeight.bold,fontSize: 20),
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Text(
      //                     "Five",
      //                     style: TextStyle(
      //           color: Color.fromARGB(255, 13, 186, 255),
      //           fontWeight: FontWeight.bold,fontSize: 20),
      //                   ),
      //                 ),
      //                 ]
      //                       ),
      //         ),

      //    Padding(
      //      padding: const EdgeInsets.all(8.0),
      //      child: Text( "One",
      //       style: TextStyle(
      //           color: Color.fromARGB(255, 13, 186, 255),
      //           fontWeight: FontWeight.bold,fontSize: 20),
      //              ),
      //    ),

      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Text(
      //     "Two",
      //     style: TextStyle(
      //         color: Color.fromARGB(248, 13, 186, 255),
      //         fontWeight: FontWeight.bold,fontSize: 20),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Text(
      //     "Three",
      //     style: TextStyle(
      //         color: Color.fromARGB(246, 13, 186, 255),
      //         fontWeight: FontWeight.bold,fontSize: 20),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Text(
      //     "Four",
      //     style: TextStyle(
      //         color: Color.fromARGB(255, 13, 186, 255),
      //         fontWeight: FontWeight.bold,fontSize: 20),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Text(
      //     "Five",
      //     style: TextStyle(
      //         color: Color.fromARGB(255, 13, 186, 255),
      //         fontWeight: FontWeight.bold,fontSize: 20),
      //   ),
      // ),
      // ]),
      //sctrl + space daba
      //List vuew builder
      /* body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(
            names[index],
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          );
        },
        itemCount: names.length,
        //reverse: true,
        itemExtent: 100, //scrollable bhi hogi
        scrollDirection: Axis.horizontal,
      ),*/

//List View Seoprator
    body: ListView.separated(
  itemCount: names.length,
  itemBuilder: (context, index) {
    return Text(
      names[index],
      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
    );
  },
  separatorBuilder: (context, index) {
    return Divider(
      height: 4,
      thickness: 4,
    );
  },
),

        //reverse: true,
      );
    
  }
}
