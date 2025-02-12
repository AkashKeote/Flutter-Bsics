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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 150, 36, 36)),
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
        title: Text(
            style: TextStyle(color: Color.fromARGB(249, 52, 181, 255)),
            "Rows and Column"),
      ),
      body: SizedBox(
        width: 500,
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "A1",
                  style: TextStyle(
                      backgroundColor: Color.fromARGB(246, 80, 218, 211),
                      fontSize: 20),
                ),
                Text(
                  "B2",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "C3",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "D4",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "E5",
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Button");
                  },
                  child: Text("Check"),
                ),
              ],
            ),
            Text(
              "A",
              style: TextStyle(
                  backgroundColor: Color.fromARGB(246, 80, 218, 211),
                  fontSize: 20),
            ),
            Text(
              "B",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "C",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "D",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "E",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  print("Button");
                },
                child: Text("Check"))

            //horizontal
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            //vertical change
            //crossAxisAlignment: CrossAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            //crossAxisAlignment: CrossAxisAlignment.end,
            ,
          ],
        ),
      ),

      //listview vs column
      //     Row(
      //   children: [
      //     Container(
      //         child: Padding(
      //       padding: const EdgeInsets.all(50.0),
      //       child: Column(
      //         children: [
      //           Container(
      //             decoration: BoxDecoration(
      //               color: Color.fromARGB(150, 245, 204, 25),
      //               borderRadius: BorderRadius.all(Radius.circular(50)),
      //             ),
      //             child: Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Text(
      //                 "Strawberry Pavlova",
      //               ),
      //             ),
      //           ),
      //           Container(
      //               decoration: BoxDecoration(
      //                   color: Color.fromARGB(255, 46, 160, 212),
      //                   borderRadius:
      //                       BorderRadius.all(Radius.elliptical(50, 50))),
      //               child: Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Text(
      //                     '''Padvlova is a meringue-based
      //               dessert name after the Russain
      //               ballerine Anna Pavova
      //               Pavlova feature a crisp crust and
      //                soft,light inside,topped with fruit
      //                and whipped cream ''',
      //                   ))),
      //           Container(
      //             width: 200, // Square size
      //             height: 200, // Same as width for square
      //             decoration: BoxDecoration(
      //               color: Colors.white, // Background color
      //               border: Border.all(
      //                 // Border styling
      //                 color: Colors.black, // Border color
      //                 width: 3, // Border thickness
      //               ),
      //             ),
      //             child: Center(child: Text('''Padvlova is a meringue-based
      //               dessert name after the Russain
      //               ballerine Anna Pavova
      //               Pavlova feature a crisp crust and
      //                soft,light inside,topped with fruit
      //                and whipped cream ''')),
      //           ),
      //           Container(
      //               child: Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Text(
      //               "Line 5",
      //               style: TextStyle(
      //                   backgroundColor: Color.fromARGB(235, 216, 164, 51)),
      //             ),
      //           ))
      //         ],
      //       ),
      //     )),
      //     SizedBox(
      //       width: 200,
      //       height: 1000,
      //       child: Image.asset("assets/images/flut.png"),
      //     ),
      //   ],
      // ),
    );
  }
}
