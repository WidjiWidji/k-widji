import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widjiwidji/assets/colors/colors.dart';
import 'package:widjiwidji/views/home/homeComponents/side_menu.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widjiwidji/services/email/emailMethods.dart';
import 'package:widjiwidji/presentation/custom_icons.dart';
import 'package:widjiwidji/views/components/gradient_icon.dart';
import 'package:widjiwidji/views/home/social_links.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:widjiwidji/views/components/on_hover.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late bool contactButtonHovered;
  final Gradient mainGradient = LinearGradient(
    colors: [
      topGradientColor,
      bottomGradientColor,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  @override
  void initState() {
    // TODO: implement initState
    contactButtonHovered = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBackgroundColor,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                        OnHover(
                          builder: (isHovered) {
                            return PhysicalModel(
                              shape: BoxShape.circle,
                              elevation: isHovered ? 16 : 0,
                              child: GradientIcon(
                                CustomIcons.github_circled,
                                50,
                                () {
                                  _launchURL(github_url);
                                },
                              ),
                              color: Colors.transparent,
                            );
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        OnHover(
                          builder: (isHovered) {
                            return PhysicalModel(
                              shape: BoxShape.circle,
                              elevation: isHovered ? 16 : 0,
                              child: GradientIcon(
                                CustomIcons.linkedin,
                                50,
                                () {
                                  _launchURL(linkedin_url);
                                },
                              ),
                              color: Colors.transparent,
                            );
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        OnHover(
                          builder: (isHovered) {
                            return PhysicalModel(
                              shape: BoxShape.rectangle,
                              elevation: isHovered ? 16 : 0,
                              child: GradientIcon(
                                CustomIcons.instagram,
                                50,
                                () {
                                  _launchURL(linkedin_url);
                                },
                              ),
                              color: Colors.transparent,
                            );
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        OnHover(
                          builder: (isHovered) {
                            return PhysicalModel(
                              shape: BoxShape.circle,
                              elevation: isHovered ? 16 : 0,
                              child: GradientIcon(
                                CustomIcons.spotify,
                                50,
                                () {
                                  _launchURL(spotify_url);
                                },
                              ),
                              color: Colors.transparent,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello World! my name is',
                    style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      color: greenCodeFontColor,
                      wordSpacing: 0.1,
                    ),
                  ),
                  Text(
                    'Karsten Widjanarko',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 60,
                      fontWeight: FontWeight.w800,
                      color: headingColor,
                      wordSpacing: 0.1,
                    ),
                  ),
                  Text(
                    'I build web and mobile\napplications.',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 60,
                      fontWeight: FontWeight.w800,
                      color: subHeadingColor.withOpacity(0.5),
                      wordSpacing: 0.1,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'I’m an aspiring software developer. Currently, I am\npursuing a B.S. in Computer Science @ UC Riverside.',
                    style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      fontSize: 20,
                      color: subHeadingColor.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth / 4),
                    child: themedButton(
                      'say hi!',
                      () {},
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //need to move these into homeComponents/side_menu.dart
  dynamic _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  OnHover themedButton(String text, void Function()? tap) {
    return OnHover(
      builder: (isHovered) {
        return PhysicalModel(
          color: Colors.transparent,
          elevation: isHovered ? 16 : 0,
          child: OutlineGradientButton(
            onTap: tap,
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'MajorMonoDisplay',
                fontSize: 15,
                color: isHovered ? Colors.black : Colors.white,
              ),
            ),
            backgroundColor: isHovered ? topGradientColor : Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            strokeWidth: 3.0,
            radius: Radius.circular(5.0),
            gradient: LinearGradient(
              colors: [
                topGradientColor,
                bottomGradientColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        );
      },
    );
  }
}
