import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class SocialMediaIcon extends StatelessWidget {
  String SocialMedia;
  String socialMediaLinks;

  SocialMediaIcon({
   super.key,
   required this.SocialMedia,
   required this.socialMediaLinks,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/$SocialMedia'),
          radius: 40,
        ),
        onTap: () {
          launchUrl(Uri.parse(socialMediaLinks), mode: LaunchMode.externalApplication);
        },
      ),
    );
  }
}
