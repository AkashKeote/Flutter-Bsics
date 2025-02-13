import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Listtilee(),
    );
  }
}

class Listtilee extends StatelessWidget {
  Listtilee({super.key});
  var names = ["Akash", "Jay", "Ronalo", "Deno", "James", "Ashish"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: const Color.fromARGB(255, 223, 255, 254),
        child: ListView.separated(
            /*itemBuilder: (context, itemCount) {
              return Text(names[itemCount],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),);
             
            },*/
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text('${index+2}',style: TextStyle(fontSize: 20),),
                title:Text(names[index],style: TextStyle(fontSize: 20),) ,
                subtitle: Text('subtitle'),
                trailing:Icon(Icons.roundabout_left) ,
              );
              
            },
            separatorBuilder: (context, itemCount) {
              return Divider(
                height: 50,
                thickness: 10,
                color: const Color.fromARGB(255, 142, 174, 177),
              );
            },
            itemCount: names.length),
      ),
    );
  }
}
