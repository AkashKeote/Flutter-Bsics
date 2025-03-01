import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_practise_1/main.dart';
import 'package:firebase_practise_1/utils/utils.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Screen"),
        actions: [
          IconButton(
            onPressed: () {
              auth.signOut().then((value) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    )).onError(
                  (error, stackTrace) {
                    Utils().toastmessage(error.toString());
                  },
                );
              });
            },
            icon: Icon(Icons.logout_sharp),
          ),
        ],
      ),
    );
  }
}
