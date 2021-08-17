import 'package:flutter/material.dart';
import 'package:widjiwidji/assets/colors/colors.dart';
import 'package:widjiwidji/services/email/emailMethods.dart';
import 'package:widjiwidji/presentation/custom_icons.dart';
import 'package:widjiwidji/views/components/gradient_icon.dart';
import 'package:widjiwidji/views/home/social_links.dart';

import 'package:url_launcher/url_launcher.dart';

/* 
Container SideMenu(
    double screenHeight, double screenWidth, bool contactButtonHovered) {
  return Container(
    decoration: BoxDecoration(
      color: sideNavBarColor,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    ),
    height: screenHeight,
    width: screenWidth / 6,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            width: 150,
            height: 150,
            child: Image.asset(
              'assets/images/widjiwidjiLogo.png',
              scale: 0.2,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              themedButton(
                'contact',
                () {
                  print('contact button pressed');
                  launch(emailLaunchUri.toString());
                },
                contactButtonHovered,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'about',
                style: sideNavFontStyle(),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'experience',
                style: sideNavFontStyle(),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'education',
                style: sideNavFontStyle(),
              ),
              SizedBox(
                height: 75,
              ),
              GradientIcon(
                CustomIcons.github_circled,
                50,
                () {
                  _launchURL(github_url);
                },
              ),
              SizedBox(
                height: 30,
              ),
              GradientIcon(
                CustomIcons.linkedin,
                50,
                () {
                  _launchURL(linkedin_url);
                },
              ),
              SizedBox(
                height: 30,
              ),
              GradientIcon(
                CustomIcons.instagram,
                50,
                () {
                  _launchURL(instagram_url);
                },
              ),
              SizedBox(
                height: 30,
              ),
              GradientIcon(
                CustomIcons.spotify,
                50,
                () {
                  _launchURL(spotify_url);
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
*/

TextStyle sideNavFontStyle() {
  return TextStyle(
    fontFamily: 'MajorMonoDisplay',
    fontSize: 18,
    color: Colors.white,
  );
}
