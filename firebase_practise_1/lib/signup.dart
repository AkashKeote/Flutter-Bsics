import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_practise_1/main.dart';
import 'package:firebase_practise_1/utils/utils.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _obscureText = true;
  bool loading = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var emailtext = TextEditingController();
    var pass = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).primaryColor ,
        title: Text(
          "Sign Up Screen",
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
                          color: const Color.fromARGB(255, 0, 0, 0), width: 3),
                      borderRadius: BorderRadius.circular(25)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 253, 8, 0),
                          width: 3),
                      borderRadius: BorderRadius.circular(25)),
                  //suffixText: "Username exists",
                  suffixIcon: //Icon(Icons.remove_red_eye_outlined,color: Colors.amber,),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.email_outlined)),
                  // prefixText: "Enter karo",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              TextField(
                keyboardType: TextInputType.phone,
                obscureText: _obscureText,
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
              ElevatedButton(
                onPressed: () {
                  var email = emailtext.text.toString();
                  var passs = pass.text.toString();
                  setState(() {
                    loading = true;
                  });
                  debugPrint("Email: $email, Pass: $passs");
                  _auth
                      .createUserWithEmailAndPassword(
                          email: email, password: passs)
                      .then((value) {
                    setState(() {
                      loading = false;
                    });
                    // handle the result here
                  }).onError((error, stackTrace) {
                    Utils().toastmessage(error.toString());
                    setState(() {
                      loading = false;
                    });
                  });
                },
                child: loading
                    ? SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                    : Text("Sign Up"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have an Account"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text("Login"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
