import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          disabledColor: Colors.blueGrey.shade300,
          useMaterial3: false),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var emailtext = TextEditingController();
  var pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).primaryColor ,
        title: Text(
          "Text Field",
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailtext,
                //enabled: false,
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.amber),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey, width: 3),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 3),
                        borderRadius: BorderRadius.circular(25)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 253, 8, 0),
                            width: 3),
                        borderRadius: BorderRadius.circular(25)),
                    suffixText: "Username exists",
                    suffixIcon: //Icon(Icons.remove_red_eye_outlined,color: Colors.amber,),
                        IconButton(
                            onPressed: () {
                              enabled:
                              false;
                            },
                            icon: Icon(Icons.remove_red_eye_sharp)),
                    // prefixText: "Enter karo",
                    prefixIcon: Icon(Icons.email)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              TextField(
                keyboardType: TextInputType.phone,
                obscureText: true,
                obscuringCharacter: "*",
                controller: pass,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(width: 3),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amberAccent,
                        ),
                        borderRadius: BorderRadius.circular(25))),
              ),
              ElevatedButton(
                  onPressed: () {
                    var email = emailtext.text;
                    var passs = pass.text;
                   debugPrint("Email: $email, Pass: $passs");
                  },
                  child: Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}
