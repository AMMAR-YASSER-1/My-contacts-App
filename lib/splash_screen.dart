
// ملف splash_screen.dart
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animated_background/animated_background.dart';
import 'package:app_2/my_contacts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => MyContacts()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBackground(
            behaviour: RandomParticleBehaviour(
              options: ParticleOptions(
                baseColor: Color.fromRGBO(104, 25, 184, 1),
                spawnMinSpeed: 10.0,
                spawnMaxSpeed: 100.0,
                spawnMinRadius: 7.0,
                spawnMaxRadius: 15.0,
                particleCount: 70,
              ),
            ),
            vsync: this,
            child: Container(
              color: Color.fromARGB(255, 32, 169, 128).withOpacity(0.5),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/Amar.jpg'),
                  radius: 90,
                ),
                SizedBox(height: 20),
                Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            'Welcome to Ammar Yasser\'s App',
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            colors: [
                              Colors.red,
                              Colors.blue,
                              Colors.green,
                              Colors.yellow,
                              Colors.purple,
                              Colors.orange,
                            ],
                          ),
                        ],
                        isRepeatingAnimation: true,
                        repeatForever: true,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

