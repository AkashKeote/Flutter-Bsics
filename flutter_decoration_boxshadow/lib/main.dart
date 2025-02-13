import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title: Text("Box Decoration And Shadow"),
        //Imp point flutter chahtha hai ki COLOR box decoration me do bahar container me na do
        //sath hi agar child me circle wali property use ki aur bahar bhi to honga conflict
        //make sure ek hi jagh use kre
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          // color: Colors.deepOrangeAccent, ye nhai chelga BOX decoration hi use karna hoga colour ke liye
          decoration: BoxDecoration(
            //   borderRadius: BorderRadius.all(Radius.circular(5)),   maine niche box deco me shape diya hai
            shape: BoxShape.circle,
            color: const Color.fromARGB(148, 171, 231, 231),
            //borderRadius:BorderRadius.all(Radius.circular(125)) ),
     //Note ellicse me x > y then horzontal    if y>x vertical    x==y circle

     //width half of side of radius of container then also circle
    //Border radius  ======          all , only 

            /* borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),*/
            // border: Border(top: BorderSide(width: 5) )
            border: Border.all(

              //Border ==     all top left right bottom
              color: const Color.fromARGB(255, 136, 176, 255),
              width: 8,
            ),

            boxShadow: [
              BoxShadow(
                blurRadius: 50,
                spreadRadius: 10,
                color: const Color.fromARGB(255, 0, 0, 0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
