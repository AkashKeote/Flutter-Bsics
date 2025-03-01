import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_practise_1/VerifyPhone.dart';
import 'package:firebase_practise_1/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({super.key});

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  final phoneNum = TextEditingController();
  bool loading = false;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            TextField(
              controller: phoneNum,
              decoration: InputDecoration(
                hintText: 'Enter your phone number',
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  loading = true;
                });

                await auth.verifyPhoneNumber(
                  phoneNumber: phoneNum.text.toString(),
                  verificationCompleted: (PhoneAuthCredential credential) {
                    setState(() {
                      loading = false;
                    });
                  },
                  verificationFailed: (FirebaseAuthException e) {
                    setState(() {
                      loading = false;
                    });
                    Utils().toastmessage(e.message.toString());
                  },
                  codeSent: (String verification, int? token) {
                    setState(() {
                      loading = false;
                    });

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>PhoneOtp(verificationid: verification),
                      ),
                    );
                  },
                  codeAutoRetrievalTimeout: (String verificationId) {
                    setState(() {
                      loading = false;
                    });
                  },
                );
              },
              child: loading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Text("Send OTP"),
            ),
          ],
        ),
      ),
    );
  }
}
