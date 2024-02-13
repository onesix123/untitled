import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              child: SvgPicture.asset(
                'assets/icons/logo.svg',
                width: 49,
                height:55.37,
              ),
            ),
            Container(
              child: SvgPicture.asset(
                'assets/icons/rocciafont.svg',
                width: 160,
                height:26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
