import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_practise_1/splash_services.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreen = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedTextKit(
          // repeatForever: true,
          animatedTexts: [
            TyperAnimatedText(
              "Splash Screen...",
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              speed: Duration(milliseconds: 100),
            ),
          ],

          // child: Text("Splash Screen...",style: TextStyle(fontSize: 25),))),
        ),
      ),
    );
  }
}
