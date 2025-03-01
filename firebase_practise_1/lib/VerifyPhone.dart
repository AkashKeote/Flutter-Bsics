import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_practise_1/post_screen.dart';
import 'package:firebase_practise_1/utils/utils.dart';
import 'package:flutter/material.dart';

class PhoneOtp extends StatefulWidget {
  final String verificationid;

  const PhoneOtp({super.key, required this.verificationid});

  @override
  State<PhoneOtp> createState() => _PhoneOtpState();
}

class _PhoneOtpState extends State<PhoneOtp> {
  final otpController = TextEditingController();
  bool loading = false;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter OTP"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter OTP sent to your phone"),
            SizedBox(height: 20),
            TextFormField(
              controller: otpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter OTP"),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: loading
                  ? null
                  : () async {
                      setState(() {
                        loading = true;
                      });

                      try {
                        PhoneAuthCredential credential = PhoneAuthProvider.credential(
                          verificationId: widget.verificationid,
                          smsCode: otpController.text.trim(),
                        );

                        await auth.signInWithCredential(credential);
                        Utils().toastmessage("OTP Verified Successfully!");

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => PostScreen()),
                        );
                      } catch (e) {
                        Utils().toastmessage("Invalid OTP! Try Again.");
                      }

                      setState(() {
                        loading = false;
                      });
                    },
              child: loading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Text("Verify OTP"),
            ),
          ],
        ),
      ),
    );
  }
}
