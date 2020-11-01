import 'package:flutter/material.dart';
import 'package:melivrando/app/login/login.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 4,
          gradientBackground: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF79ACE2),
                Color(0xFF6D9BCC),
              ]),
          navigateAfterSeconds: Login(),
          loaderColor: Colors.transparent,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/melivrando_icon.png'),
              fit: BoxFit.none,
              scale: 4,
            ),
          ),
        )
      ],
    );
  }
}
