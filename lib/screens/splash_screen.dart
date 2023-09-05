import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dawatulkhair/screens/dashboard_screen.dart';
import 'package:dawatulkhair/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Center(
          child: Stack(alignment: Alignment.center, children: [
            Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                width: 150,
                height: 150,
                child: const Image(
                    image: AssetImage(
                  'assets/images/logo.png',
                )),
              ),
              const SizedBox(
                height: 300,
              ),
            ]),
            DefaultTextStyle(
              style: const TextStyle(
                color:Color.fromARGB(234, 42, 77, 51),
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Bobbers',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('DAWAT-UL-KHAIR',
                      speed: const Duration(milliseconds: 170)),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
