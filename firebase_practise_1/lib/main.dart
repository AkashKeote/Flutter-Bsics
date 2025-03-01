import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_practise_1/login_with_phone.dart';
import 'package:firebase_practise_1/post_screen.dart';
import 'package:firebase_practise_1/signup.dart';
import 'package:firebase_practise_1/splash_screen.dart';
import 'package:firebase_practise_1/utils/utils.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        disabledColor: Colors.blueGrey.shade300,
        useMaterial3: false,
      ),
      home: SplashScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});
  bool loading = false;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var emailtext = TextEditingController();
  var pass = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool loading = false;
  bool _obscureText = true; // Password ke liye variable

  void login() {
    setState(() {
      loading = true;
    });
    _auth
        .signInWithEmailAndPassword(
            email: emailtext.text, password: pass.text.toString())
        .then((value) {
      setState(() {
        loading = false;
      });
      Utils().toastmessage(value.user!.email.toString());
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => PostScreen()));
    }).onError(
      (error, stackTrace) {
        debugPrint(error.toString());
        Utils().toastmessage(error.toString());
        setState(() {
          loading = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: emailtext,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.email_outlined),
                hintText: "Enter your email",
                hintStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 3),
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 253, 8, 0), width: 3),
                  borderRadius: BorderRadius.circular(25),
                ),
                //suffixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.phone,
              obscureText: _obscureText, // Yeh yaha implement ho raha hai
              obscuringCharacter: "*",
              controller: pass,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText; // Toggle kar raha hai
                    });
                  },
                  icon: Icon(_obscureText ? Icons.lock : Icons.lock_open),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(width: 3),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amberAccent),
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                var email = emailtext.text;
                var passs = pass.text.toString();
                debugPrint("Email: $email, Pass: $passs");
                login();
              },
              child: loading
                  ? SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : Text("Login"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have an Account"),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Text("Sign Up"))
              ],
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginWithPhone(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text("Login with "),
                      ),
                      Icon(Icons.call_end_outlined),
                    ],
                  ),
                ),
              ),
              // decoration: DecoratedBox(decoration: decoration)
            ),
          ]),
        ),
      ),
    );
  }
}
