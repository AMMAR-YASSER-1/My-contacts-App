import 'package:app_2/social_media_icon.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_background/animated_background.dart';

class MyContacts extends StatefulWidget {
  MyContacts({super.key});

  @override
  _MyContactsState createState() => _MyContactsState();
}

class _MyContactsState extends State<MyContacts> with TickerProviderStateMixin {
  Map<String, String> socialMedia = {
    'facebook.icon.jpg': 'https://www.facebook.com/mero32.r',
    'instagram.jpg': 'https://www.instagram.com/m.j.o21?igsh=MW1vYzQ1Ym5zbHN3cA==',
    'whatsapp.jpg': 'https://wa.me/+201096640473',
    'github.png': 'https://github.com/AMMAR-YASSER-1',
    'telegram.png': 'https://t.me/Amar9541',
    'twitter.jpg': 'https://x.com/AmarYas00091698?t=GxnBJtquFDZ0ImkQ_pW0ig&s=09',
  };

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
            child: Container(),
          ),
          Container(
            color: Color.fromARGB(255, 32, 169, 128).withOpacity(0.5),
          ),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 70),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/Amar.jpg'),
                    radius: 90,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ammar Yasser',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '      +201096640473',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 5),
                      IconButton(
                        icon: Icon(
                          Icons.phone,
                          size: 30,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          launchUrl(Uri.parse('tel:+201096640473'));
                        },
                      ),
                    ],
                  ),
                  GridView.builder(
                    itemCount: socialMedia.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      return SocialMediaIcon(
                        SocialMedia: socialMedia.keys.toList()[index],
                        socialMediaLinks: socialMedia.values.toList()[index],
                      );
                    },
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.all(25),
                  ),
                  SizedBox(height: 150),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            'This simple program has been developed before Ammar Yasser',
                            textStyle: TextStyle(
                              fontSize: 10,
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
          ),
        ],
      ),
    );
  }
}
