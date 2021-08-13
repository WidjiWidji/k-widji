import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widjiwidji/assets/colors/colors.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widjiwidji/services/email/emailMethods.dart';

const _url = 'https://mail.google.com/mail/u/0/#inbox?compose=new';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late bool contactButtonHovered;
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
                      child: Image.network(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  OutlineGradientButton themedButton(String text, void Function()? tap) {
    return OutlineGradientButton(
      onHover: (value) {
        setState(() {
          contactButtonHovered = value;
        });
      },
      onTap: tap,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'MajorMonoDisplay',
          fontSize: 15,
          color: contactButtonHovered ? Colors.black : Colors.white,
        ),
      ),
      backgroundColor: contactButtonHovered ? Colors.white : Colors.transparent,
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
    );
  }

  TextStyle sideNavFontStyle() {
    return TextStyle(
      fontFamily: 'MajorMonoDisplay',
      fontSize: 18,
      color: Colors.white,
    );
  }
}
